class WelcomeController < ApplicationController
  def index
    @restaurants = Restaurant.all.order :name
    @categories  = Category.all.order :name
    render layout: 'public'
  end
end
