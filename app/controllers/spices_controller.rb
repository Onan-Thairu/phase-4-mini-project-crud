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

  # PATCH /spices/:id
  def update
    spice = Spice.find_by_id(params[:id])
    if spice
      spice.update(spice_params)
      render json: spice
    else
      render json: { error: "Spice not found" }
    end
  end


  private

  def spice_params
    params.permit(:title, :image, :description, :notes, :rating)
  end
end
