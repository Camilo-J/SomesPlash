class SearchsController < ApplicationController
  def index; end

  def search
    prueba = params[:query]
    @images = Image.where("title ilike ?", "%#{prueba}%")
    render :index
  end
end
