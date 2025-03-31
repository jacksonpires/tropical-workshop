import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="current-time"
export default class extends Controller {
  static targets = [ "currentTime24", "currentTime12" ]

  connect() {
    this.#setCurrentTime()

    setInterval(() => {
      this.#setCurrentTime()
    }
    , 1000)
  }

  #setCurrentTime() {
    const localeTime24 = new Date().toLocaleTimeString('pt-BR', { hour12: false })
      const localeTime12 = new Date().toLocaleTimeString('pt-BR', { hour12: true })

      this.currentTime24Target.textContent = `Hora atual (24H): ${localeTime24}`
      this.currentTime12Target.textContent = `Hora atual (12H): ${localeTime12}`
  }
}
