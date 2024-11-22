import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["star", "hiddenInput"];

  connect() {
    this.selectedValue = 0;
    console.log("hiiiiiiiiiiiiiiii");
    
  }

  select(event) {
    const clickedValue = event.currentTarget.dataset.value;
    this.selectedValue = clickedValue;
    this.hiddenInputTarget.value = this.selectedValue;
    this.updateStars(clickedValue);
  }

  updateStars(value) {
    this.starTargets.forEach((star) => {
      if (star.dataset.value <= value) {
        star.classList.add("selected");
      } else {
        star.classList.remove("selected");
      }
    });
  }
}
