import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="current-time"
export default class extends Controller {
  connect() {
    const currentTime = new Date().toLocaleTimeString('pt-BR', { hour12: false })
    this.element.textContent = `Hora atual: ${currentTime}`
  }
}
