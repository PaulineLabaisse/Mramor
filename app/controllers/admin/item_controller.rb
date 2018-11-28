class Admin::ItemController < ApplicationController
  before_action :authenticate_admin!

  def admin 
  end 
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
    flash[:notice] = "Product added!"
    # redirect_to admin_items_path
  else
    flash[:notice] = "Product can't be blank!"
    # render 'admin/items/new'
    end
  end
  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    flash[:notice] = "Product updated!"
    # redirect_to admin_items_path

  end

    def destroy
      Item.destroy(params[:id])
      flash[:notice] = "Product removed!"
    end

    private
    def item_params
      params.require(:item).permit(:title, :description, :price, :image_url)
    end
end
