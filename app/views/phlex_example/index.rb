module Views
  module PhlexExample
    class Index < Views::Base
      def initialize(name:)
        @name = name
      end

      def view_template
        div(class: "flex w-full justify-center") do
          div(class: "flex flex-col bg-gray-100 p-10 gap-4 items-center shadow-md rounded-md") do
            h1(class: "text-4xl text-purple-700 font-bold") { "Hello, #{@name}" }

            link_to("Phlex Docs", "https://www.phlex.fun/introduction/", class: "text-purple-500", target: "_blank")

            image_tag("https://framerusercontent.com/images/gXMPTzPfNdd5uK3nLV3TCbWO9c.png?scale-down-to=512", class: "w-1/2")

            render(CurrentDateAndTime.new)
          end
        end
      end
    end
  end
end
