class ApplicationController < ActionController::Base
  def index
    items = Item.all
  end

  def create
    item = Item.all(item_params)
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
  end

  def destroy
    item = Item.find(params[:id])
    item.delete
  end

  private
  def item_params
    params.require(:name).permit(:deleted_at)
  end
end