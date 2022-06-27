class TreesController < ApplicationController
  before_action :set_tree, only: :show
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
      redirect_to tree_path(@tree)
    else
      render :new
    end
  end

  def show
  end

  private

  def set_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:name, :address, :description, :price_per_year, :fruits, :quantity_by_year, :photo)
  end
end
