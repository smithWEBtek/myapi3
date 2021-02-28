class StaticController < ApplicationController

  def people
    render 'layouts/people.html.erb'
  end
end