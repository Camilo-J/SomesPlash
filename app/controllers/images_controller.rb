class ImagesController < ApplicationController
  def show
    image
  end

  def new
    @image = Image.new
    @category = Category.find(params[:category_id])
  end

  def create
    @image = @image = Image.new(image_params)

    if @image.save
      redirect_to category_path(@image.category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    image
    @category = Category.find(params[:category_id])
  end

  def update
    image

    if @image.update(image_params)
      redirect_to category_path(@image.category)
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    redirect_to category_path, status: :see_other
  end

  def comments
    image = Image.find(params[:id])
    comments = image.comments.create(body: params[:query])
    redirect_to image_path(comments.commentable)
  end

  private

  def image_params
    params.require(:image).permit(:title, :description, :category_id, :photo)
  end

  def image
    @image = Image.find(params[:id])
  end
end
