import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = ["hidden", "star"]

  connect() {
    console.log("Star Rating Controller Connected!")
    // Set initial state if a value exists
    const rating = this.hiddenTarget.value
    if (rating) {
      this.highlightStars(rating)
    }
  }

  hover(event) {
    const rating = event.currentTarget.dataset.starRatingValue
    this.highlightStars(rating)
  }

  select(event) {
    const rating = event.currentTarget.dataset.starRatingValue
    this.inputTarget.value = rating
    this.highlightStars(rating)
    console.log(`Rating selected: ${rating}`)
  }

  highlightStars(rating) {
    this.starTargets.forEach((star, index) => {
      if (index < rating) {
        star.classList.add("active")
      } else {
        star.classList.remove("active")
      }
    })
  }
}
