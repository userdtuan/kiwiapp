class CategoriesController < ApplicationController
  def index
    @categories = Category.all
end
def create
    @ca = Category.new(category_params)
    @ca.save
    redirect_to categories_index_path
end
def delete
    ca = Category.find_by(id: params[:id])
    ca.destroy
    redirect_to categories_index_path
end
def update
    @category = Category.find_by(id: params[:id])
end
def apply_update
    @category = Category.find_by(id: params[:id])
    if @category.update(category_params)
        flash[:notice] = "Category update successfully!"
        redirect_to categories_index_path
    else
        flash[:notice] = "Category update successfully!"
    redirect_to category_update_path
    end
end
private
def category_params
  params.require(:category).permit(:title, :description, :loai)
end
end
