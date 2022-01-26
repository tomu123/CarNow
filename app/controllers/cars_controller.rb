class CarsController < ApplicationController
  def show
    @car = Car.find(params[:id])
  end

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.save
    redirect_to car_path(@car)
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to car_path(@car)
  end

  private

  def car_params
    params[:car][:year] = Date.new(params[:car][:year], 1, 1)
    params.require(:car).permit(:brand, :city, :rating, :model, :color, :number_plate, :year)
  end
end
