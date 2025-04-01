module Views
  module RubyUiExample
    class Index < Views::Base
      def view_template
        div(class: "flex w-full justify-center") do
          Alert do
            AlertTitle { "Pro tip" }
            AlertDescription { "Simply, don't include an icon and your alert will look like this." }
          end
        end
      end
    end
  end
end
