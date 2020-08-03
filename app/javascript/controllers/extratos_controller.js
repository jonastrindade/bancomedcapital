// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output", "heading" ]

  change() {
    const valor =  this.headingTarget.value 
    this.headingTarget.innerHTML = "2"
    console.log("click")
  }
}

// <%= content_tag :div, nil, data: {controller: "extratos"} do %>
//   <div class="btn btn-primary" data-action="click->extratos#change" data-target="extratos.heading">3</div>
// <% end %>
