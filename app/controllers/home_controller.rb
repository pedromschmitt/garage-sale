class HomeController < ApplicationController
  def index
    @items = Item.all
    render json: @items
  end
end