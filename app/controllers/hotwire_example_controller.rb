class HotwireExampleController < ApplicationController
  def index
  end

  def update
    @magic_sequence = SecureRandom.hex(8)

    render turbo_stream: turbo_stream.update(
      "ATUALIZAR_AQUI",
      partial: "hotwire_example/magic_sequence"
    )
  end
end
