class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @cars = Car.all
  end
  def show
    @car = Car.find(params[:id])
  end
  def search
  end
  private

  def car_params
    params.require(:car).permit(:brand, :city, :rating, :city, :model, :color, :number_plate, :year)
  end
end
