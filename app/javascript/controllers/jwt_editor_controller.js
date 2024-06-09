import {Controller} from "@hotwired/stimulus";
import {basicSetup, EditorView} from "codemirror";
import {EditorState} from "@codemirror/state";
import {Decoration, ViewPlugin} from "@codemirror/view";

// Connects to data-controller="jwt-editor"
const jwtHighlighter = (view) => {
    const widgets = [];
    const text = view.state.doc.toString();
    const parts = text.split('.');

    if (parts.length >= 1) {
        const headerEnd = parts[0].length;
        if (headerEnd > 0) {
            widgets.push(Decoration.mark({class: 'cm-header'}).range(0, headerEnd));
        }

        if (parts.length >= 2) {
            const payloadEnd = headerEnd + 1 + parts[1].length;
            if (parts[1].length > 0) {
                widgets.push(Decoration.mark({class: 'cm-payload'}).range(headerEnd + 1, payloadEnd));
            }

            if (parts.length === 3 && parts[2].length > 0) {
                widgets.push(Decoration.mark({class: 'cm-signature'}).range(payloadEnd + 1, text.length));
            }
        }
    }
    return Decoration.set(widgets, true);
}

const highlightPlugin = ViewPlugin.define(view => {
    return ({
        decorations: jwtHighlighter(view),
        update(update) {
            if (update.docChanged || update.viewportChanged) {
                this.decorations = jwtHighlighter(update.view);
            }
        }
    });
}, {
    decorations: v => v.decorations
});

export default class extends Controller {

    static targets = ["editor"];
    static values = {
        doc: String
    };

    connect() {

        new EditorView({
            parent: this.editorTarget || this.element,
            state: EditorState.create({
                doc: this.docValue || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c',
                extensions: [
                    basicSetup,
                    highlightPlugin,
                ]
            })
        });
    }
}
