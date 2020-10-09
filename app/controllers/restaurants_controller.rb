class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
  end

  def destroy
    @restaurant.destroy
    redirect_to articles_url, notice: 'Restaurant was successfully destroyed.'
  end

end
