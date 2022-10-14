class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    category
    @images = @category.images
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      # /departments/4
      # redirect_to "/departments/#{@department.id}"
      # redirect_to department_path(@department)

      redirect_to @category
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    category
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to categories_path
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path, status: :see_other
  end

  private

  def category_params
    params.require(:category).permit(:name, :description)
  end

  private

  def category_params
    params.require(:category).permit(:name, :description, :photo)
  end

  def category
    @category = Category.find(params[:id])
  end
end
