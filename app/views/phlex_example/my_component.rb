class Views::PhlexExample::MyComponent < Views::Base
  def initialize(name:)
    @name = name
  end

  def view_template
    h1 { "Hello, #{@name}" }
  end
end
