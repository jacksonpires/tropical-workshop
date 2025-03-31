class Views::PhlexExample::CurrentDateAndTime < Views::Base
  def view_template
    div(class: "p-4 border rounded-md") do
      p { "Data atual: #{Date.today.strftime('%d/%m/%Y')}" }
      p { "Hora atual (24H): #{Time.now.strftime('%H:%M:%S')}" }
      p { "Hora atual (12H): #{Time.now.strftime('%I:%M:%S')}" }
    end
  end
end
