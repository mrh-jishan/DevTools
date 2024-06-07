import {Controller} from "@hotwired/stimulus"
import {basicSetup, EditorView} from "codemirror"
import {json} from "@codemirror/lang-json"
import {js_beautify} from 'js-beautify';
// Connects to data-controller="codemirror"
export default class extends Controller {

    static targets = ["editor"]
    static values = {
        doc: String
    }

    connect() {
        this.editor = new EditorView({
            doc: js_beautify(this.docValue, {indent_size: 2, space_in_empty_paren: true}),
            extensions: [
                basicSetup,
                json(),
            ],
            parent: this.hasEditorTarget ? this.editorTarget : this.element
        })

    }

    disconnect() {
        this.editor.destroy()
    }

}
