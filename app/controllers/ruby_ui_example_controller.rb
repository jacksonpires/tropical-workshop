class RubyUiExampleController < ApplicationController
  def index
    render Views::RubyUiExample::Index.new(user: User.new)
  end
end
