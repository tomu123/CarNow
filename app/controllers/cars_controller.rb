class CarsController < ApplicationController
  before_action :set_car, only: %i[ show edit update destroy ]
  def show
    authorize @car
  end

  def index
    @cars = policy_scope(Car).order(created_at: :desc)
  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    authorize @car
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit

  end

  def update

    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy

    @car.destroy
    redirect_to cars_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:brand, :city, :rating, :city, :model, :color, :number_plate, :year)
  end

  def set_car
    @car = Car.find(params[:id])
  end


end
