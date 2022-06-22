class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end


  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    if @tree.save
      redirect_to tree_path(@tree), notice: 'Tree was successfully added'
    else
      render :new
    end
  end

  private
  def tree_params
    params.require(:tree).permit(:name, :address, :description, :price_per_year, :fruits, :quantity_by_year)
  end
end
