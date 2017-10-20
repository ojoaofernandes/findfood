class WelcomeController < ApplicationController
  def index
    @categories = Category.all.order :name
    render layout: 'public'
  end
end
