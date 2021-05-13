class HousesController < ApplicationController
  def index
    houses = House.all
    render json: houses.as_json
  end

  def create
    house = House.new(
    description: params[:description],
    year_built: params[:year_built],
    square_feet: params[:square_feet],
    bedrooms: params[:bedrooms],
    bathrooms: params[:bathrooms],
    availability: params[:availability],
    address: params[:address],
    price: params[:price]
    )
    house.save
    render json: house.as_json
  end

  def show
    house = House.find_by(id: params[:id])
    render json: house.as_json
  end

  def update
    house = House.new
    house.description = params[:description] || house.description
    house.year_built = params[:year_built] || house.year_built
    house.square_feet = params[:square_feet] || house.square_feet
    house.bedrooms = params[:bedrooms] || house.bedrooms
    house.bathrooms = params[:bathrooms] || house.bathrooms
    house.availability = params[:availability] || house.availability
    house.address = params[:address] || house.address
    house.price = params[:price] || house.price
    house.save
    render json: house.as_json
  end

  def destroy
    house = House.find_by(id: params[:id])
    house.destroy
    render json: {message: "Bye!"}
  end
end
