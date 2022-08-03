import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input"];

  autoMask(ele) {
    this.inputTarget.value = this.numericStringMask(
      ele.target.value,
      "###-###-####"
    );
  }

  numericStringMask(str, mask) {
    if (!mask) return str;

    const numeric = str.replaceAll(/[^\d]/g, "");

    let idx = 0;

    const formated = mask.split("").map((el) => {
      if (el === "#") {
        el = numeric[idx];
        idx++;
      }
      return el;
    });

    return formated.join("");
  }
}
