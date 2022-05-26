class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @project = Flat.new(flat_params)
    @project.save!
  end

  def flat_params
     params.require(:project).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

end
