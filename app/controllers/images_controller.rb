class ImagesController < ApplicationController
  def show
    @image = Image.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
