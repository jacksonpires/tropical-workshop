class UsersController < ApplicationController
  def create
    user = User.new(user_params)

    user = User.new if user.save
p '*' * 100
p user
    render turbo_stream: turbo_stream.replace(
      "RUBY_UI_EXAMPLE",
      Views::RubyUiExample::Index.new(user:)
    )
  end

  private

  def user_params
    params.expect(user: [ :name, :email ])
  end
end
