import {Controller} from "@hotwired/stimulus";
import {basicSetup, EditorView} from "codemirror";
import {HighlightStyle, StreamLanguage, syntaxHighlighting, LanguageSupport, Language} from "@codemirror/language";
import {Tag} from "@lezer/highlight";
import {EditorState} from "@codemirror/state";

const jwtTags = {
    Header: Tag.define(),
    Payload: Tag.define(),
    Signature: Tag.define()
};

// Define custom highlight styles
const jwtHighlightStyle = HighlightStyle.define([
    {tag: jwtTags.Header, color: "blue"},
    {tag: jwtTags.Payload, color: "green"},
    {tag: jwtTags.Signature, color: "red"}
]);

const jwt = () => {
    const jwtTokenizer = {
        token: (stream) => {
            const jwt = stream.string;
            const parts = jwt.split('.');
            if (parts.length !== 3) {
                stream.skipToEnd();
                return null;
            }
            const [header, payload, signature] = parts;
            const position = stream.pos;
            if (position < header.length) {
                stream.pos = header.length;
                return "jwt-header";
            } else if (position < header.length + 1 + payload.length) {
                stream.pos = header.length + 1 + payload.length;
                return "jwt-payload";
            } else if (position < header.length + 1 + payload.length + 1 + signature.length) {
                stream.pos = header.length + 1 + payload.length + 1 + signature.length;
                return "jwt-signature";
            } else {
                stream.skipToEnd();
                return null;
            }
        }
    };

    return StreamLanguage.define({
        token: (stream) => {
            return jwtTokenizer.token(stream);
        }
    });
};

export default class extends Controller {
    static targets = ["editor"];
    static values = {
        doc: String
    };

    connect() {
        new EditorView({
            parent: this.editorTarget || this.element,
            state: EditorState.create({
                doc: this.docValue || "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
                extensions: [
                    // basicSetup,
                    syntaxHighlighting(jwtHighlightStyle),
                    jwt()
                ],
            })
        });
    }
}
