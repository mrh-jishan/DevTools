import {Controller} from "@hotwired/stimulus"
import Split from "split-grid";

// Connects to data-controller="split-grid"
export default class extends Controller {

    connect() {
        Split({
            columnGutters: [{
                track: 1,
                element: document.querySelector('[data-gutter-col]')
            }]
        })
    }
}
