class WelcomeController < ApplicationController
  def index
    @restaurants = Restaurant.all.order :name
    @categories  = Category.all.order :name
    render layout: 'public'
  end

  def restaurant
    if params[:restaurant_id].blank?
      redirect_to welcome_index_url
    end

    @restaurant = Restaurant.find(params[:restaurant_id])
    @categories = Category.all.order :name
    render layout: 'public'
  end
end
