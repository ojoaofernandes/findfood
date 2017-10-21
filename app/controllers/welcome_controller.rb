class WelcomeController < ApplicationController
  def index
    if params[:category_id].blank?
      @restaurants = Restaurant.all.order :name
    else
      @restaurants = Restaurant.joins(:dishes).where('dishes.category_id': params[:category_id])
    end

    @categories = Category.all.order :name
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
