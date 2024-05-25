class StaticController < ApplicationController
  def index
    render inertia: 'Index'
  end
end