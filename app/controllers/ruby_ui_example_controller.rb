class RubyUiExampleController < ApplicationController
  def index
    render Views::RubyUiExample::Index.new
  end
end
