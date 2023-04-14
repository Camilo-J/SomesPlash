class SearchsController < ApplicationController
  def index; end

  def show
    prueba = params[:query]
    @images = Image.where("title ilike ?", "%#{prueba}%")
    render :show
  end
end
