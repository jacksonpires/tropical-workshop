class PhlexExampleController < ApplicationController
  def index
    render Views::PhlexExample::Index.new(name: "TROPICAL ON RAILS 2025")
  end
end
