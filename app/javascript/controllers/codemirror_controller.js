import { Controller } from "@hotwired/stimulus"
import {basicSetup, EditorView} from "codemirror"
import { json } from "@codemirror/lang-json"

// Connects to data-controller="codemirror"
export default class extends Controller {

  static targets = ["editor", "input"]
  static values = {
    doc: String
  }

  connect() {
    const element = this.hasEditorTarget ? this.editorTarget : this.element

    this.editor = new EditorView({
      doc: this.docValue,
      extensions: [
        basicSetup,
        // StreamLanguage.define(ruby),
        json(),
        // autocompletion({override: [this.completions]}),
        // EditorView.updateListener.of((view) => {
        //   if (view.docChanged) { this.sync() }
        // })
      ],
      parent: element
    })
  }

  disconnect() {
    this.editor.destroy()
  }

  // sync() {
  //   this.inputTarget.value = this.editor.state.doc.toString()
  // }

  // completions(context) {
  //   let word = context.matchBefore(/\w*/)
  //   if (word.from == word.to && !context.explicit)
  //     return null
  //
  //   return {
  //     from: word.from,
  //     options: [
  //       { label: "User", type: "constant", info: "The User model" }
  //     ]
  //   }
  // }
}
