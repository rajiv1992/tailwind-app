import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="user-input-validation"
export default class extends Controller {
  static targets = ["form"];

  submitForm(event) {
    let isValid = this.validateForm(this.formTarget);

    // If our form is invalid, prevent default on the event
    // so that the form is not submitted
    if (!isValid) {
      event.preventDefault();
    }
  }

  validateForm() {
    let isValid = true;

    let requiredFieldSelectors = "textarea:required, input:required";
    let requiredFields = this.formTarget.querySelectorAll(
      requiredFieldSelectors
    );

    requiredFields.forEach((field) => {
      if (!field.disabled && !field.value.trim()) {
        // field.focus();
        field.nextSibling.innerText = field.validationMessage;

        isValid = false;

        return false;
      }
    });

    // If we already know we're invalid, just return false
    if (!isValid) {
      return false;
    }

    // Search for any browser invalidated input fields and focus them
    let invalidFields = this.formTarget.querySelectorAll("input:invalid");

    invalidFields.forEach((field) => {
      if (!field.disabled) {
        field.nextSibling.innerText = field.validationMessage;

        isValid = false;
      }
    });

    return isValid;
  }

  errorMessageEl(el) {
    return el.closest(".field").querySelector(".error-message");
  }

  validate(el) {
    var field = el.target;
    if (!field.checkValidity()) {
      field.nextSibling.innerText = field.validationMessage;
      field.focus();
      return false;
    } else {
      field.nextSibling.innerText = "";
    }
  }

  validateCustomForm(event) {
    let isValid = this.validateForm(this.formTarget);

    // If our form is invalid, prevent default on the event
    // so that the form is not submitted
    if (!isValid) {
      document.getElementsByName("commit")[0].setAttribute("disabled", false);
      event.preventDefault();
    } else {
      document.getElementsByName("commit")[0].removeAttribute("disabled");
    }
  }
}
