import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  reset() {
      console.log("called")
    this.element.reset()
  }
}
