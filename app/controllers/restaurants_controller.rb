class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i(show)
  def index
    @restaurants = Restaurant.all
  end

  def show
    @average_rating = '%.2f' % @restaurant.average_rating
  end

  def new
    @restaurant = Restaurant.new
    # @restaurant.name = 'Yair'
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
