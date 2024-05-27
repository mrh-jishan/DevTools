import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="jwt-editor"
export default class extends Controller {
  connect() {
    // CodeMirror.defineSimpleMode("jwt", {
    //   start: [
    //     {regex: /^[A-Za-z0-9_-]+(?=\.)/, token: "jwt-header"},
    //     {regex: /(?<=\.)[A-Za-z0-9_-]+(?=\.)/, token: "jwt-payload"},
    //     {regex: /(?<=\.)[A-Za-z0-9_-]+$/, token: "jwt-signature"}
    //   ]
    // });
    //
    // const editor = CodeMirror.fromTextArea(document.getElementById("jwt-editor"), {
    //   lineNumbers: true,
    //   mode: "jwt",
    //   theme: "default"
    // });
  }
}
