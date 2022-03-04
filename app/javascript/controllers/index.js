// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))
console.log('hello')

// Target the button
const btn = document.getElementById("favourite");
// Target the text
const txt = document.querySelector(".text");
// Add an evnet listener on the button (CLICK event)

if (btn) {
  document.addEventListener("turbolinks:load", () => {
    btn.addEventListener("click", (event) => {
      const icon = btn.querySelector("i");
      icon.classList.remove("far");
      icon.classList.add("fas");
      txt.classList.remove("d-none");
      console.log(txt.innerHTML);
    });
    // Remove the class d-none from text
  })
}
