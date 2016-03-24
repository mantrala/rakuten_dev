class ProductsController < ApplicationController
  def index
    @products = Product.includes(:advertiser)
    render json: @products
  end
end
