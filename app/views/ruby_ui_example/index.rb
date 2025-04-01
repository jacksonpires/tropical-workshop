module Views
  module RubyUiExample
    class Index < Views::Base
      def initialize(user:)
        @user = user
      end

      def view_template
        div(
          id: "RUBY_UI_EXAMPLE",
          class: "flex flex-col items-center w-full justify-center gap-4"
        ) do
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

          h1(class: "text-2xl") { "User Form" }
          form_with(url: users_path, class: "w-1/2 flex flex-col gap-4") do
            FormField do
              FormFieldLabel { "Name" }

              Input(
                name: "user[name]",
                value: @user.name,
                placeholder: "Jackson Pires",
                required: true,
                minlength: "3"
              ) { @user&.name }

              FormFieldError { @user&.errors[:name].to_sentence.upcase_first }
            end

            FormField do
              FormFieldLabel { "E-mail" }

              Input(
                name: "user[email]",
                value: @user&.email,
                placeholder: "jack@tropical.com",
                required: true,
                minlength: "3",
                type: "email"
              ) { @user&.name }

              FormFieldError { @user.errors[:email].to_sentence.upcase_first }
            end

            Button(type: "submit") { "Save" }
          end
        end
      end
    end
  end
end
