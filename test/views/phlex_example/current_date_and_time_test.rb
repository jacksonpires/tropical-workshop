# frozen_string_literal: true

require "test_helper"

module Views
  module PhlexExample
    class CurrentDateAndTimeTest < ComponentTestCase
      def test_render_properly
        output = render_to_string(Views::PhlexExample::CurrentDateAndTime.new)
        assert_match("Data atual: #{Date.today.strftime('%d/%m/%Y')}", output)
        assert_match("Hora atual (12H):", output)
        assert_match("Hora atual (24H):", output)
      end
    end
  end
end
