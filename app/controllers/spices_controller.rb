class SpicesController < ApplicationController

  # GET /spices
  def index
    spices = Spice.all
    render json: spices
  end

  # POST /spices
  def create
    spice = Spice.create(spice_params)
    render json: spice
  end
  

  private

  def spice_params
    params.permit(:title, :image, :description, :notes, :rating)
  end
end
