module Views
  module PhlexExample
    class CurrentDateAndTime < Views::Base
      def view_template
        div(
          class: "p-4 border rounded-md",
          data: {
            controller: "current-time",
            current_time_pre_text_value: "TROPICAL INFORMA ->"
          }
        ) do
          p { "Data atual: #{Date.today.strftime('%d/%m/%Y')}" }

          p(data: { current_time_target: "currentTime24" }) { "Hora atual (24H): #{Time.now.strftime('%H:%M:%S')}" }
          p(data: { current_time_target: "currentTime12" }) { "Hora atual (12H): #{Time.now.strftime('%I:%M:%S')}" }
        end
      end
    end
  end
end
