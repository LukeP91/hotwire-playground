import { Controller } from "@hotwired/stimulus"
import { useMutation } from 'stimulus-use'

export default class extends Controller {
  connect() {
    useMutation(this, { attributes: false, childList: true, subtree: true })
  }

  mutate(entries) {
    let manualInvestments = entries[0].target
    let children = []
    if (manualInvestments.id == "manual_investments") {
      children = Array.from(manualInvestments.children)
    } else {
      manualInvestments = manualInvestments.parentElement
      children = Array.from(manualInvestments.parentElement.children)
    }
    if (elementsAreSorted(children)) return
    // children.sort(compareElements).forEach(element => {
    //     this.append(element, manualInvestments)
    // })
  }

  append(child, element) {
    element.append(child)
  }
}

function elementsAreSorted([ left, ...rights ]) {
  for (const right of rights) {
    if (compareElements(left, right) > 0) return false
    left = right
  }
  return true
}

function compareElements(left, right) {
  return getSortCode(right) > getSortCode(left)
}

function getSortCode(element) {
  return Date.parse(element.firstElementChild.getAttribute("data-sort-code"))
}
