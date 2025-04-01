module Views
  module RubyUiExample
    class Index < Views::Base
      def view_template
        div(class: "flex flex-col items-center w-full justify-center gap-4") do
          Alert do
            lucide_icon("rocket")
            AlertTitle { "Pro tip" }
            AlertDescription { "Simply, don't include an icon and your alert will look like this." }
          end

          AlertDialog do
            AlertDialogTrigger do
              Button { "Show dialog" }
            end
            AlertDialogContent do
              AlertDialogHeader do
                AlertDialogTitle { "Are you absolutely sure?" }
                AlertDialogDescription { "This action cannot be undone. This will permanently delete your account and remove your data from our servers." }
              end
              AlertDialogFooter do
                AlertDialogCancel { "Cancel" }
                AlertDialogAction { "Continue" } # Will probably be a link to a controller action (e.g. delete account)
              end
            end
          end
        end
      end
    end
  end
end
