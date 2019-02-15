class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.delete
    redirect_to flats_url
  end
end
