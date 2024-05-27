import {Controller} from "@hotwired/stimulus"
import {debounce} from 'lodash'

// Connects to data-controller="buttonless-form"
export default class extends Controller {
    connect() {
        let that = this;
        that.element.addEventListener('change', debounce(that.handleChange, 200))
    }

    handleChange(event) {
        event.preventDefault()
        event.target.form.requestSubmit()
    }
}
