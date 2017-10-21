class WelcomeController < ApplicationController
  def index
    if params[:category_id].present?
      @restaurants = Restaurant.joins(:dishes).where('dishes.category_id': params[:category_id]).distinct
    elsif params[:dish].present?
      term = params[:dish].upcase
      @restaurants = Restaurant.joins(:dishes).where('UPPER(dishes.name) LIKE ?', "%#{term}%")
    else
      @restaurants = Restaurant.all_ordered
    end

    @categories = Category.all_ordered
    render layout: 'public'
  end

  def restaurant
    if params[:restaurant_id].blank?
      redirect_to welcome_index_url
    end

    @restaurant = Restaurant.find(params[:restaurant_id])
    @categories = Category.all_ordered
    render layout: 'public'
  end
end
