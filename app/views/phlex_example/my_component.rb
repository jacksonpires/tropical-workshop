class Views::PhlexExample::MyComponent < Views::Base
  def initialize(name:)
    @name = name
  end

  def view_template
    div(class: "flex flex-col bg-gray-100 p-10 gap-4 items-center shadow-md rounded-md") do
      h1(class: "text-4xl text-purple-700 font-bold") { "Hello, #{@name}" }
      a(href: "https://www.phlex.fun/introduction/", class: "text-purple-500", target: "_blank") { "Phlex Docs" }
    end
  end
end
