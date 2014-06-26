class ProductsController < ApplicationController
  def index
    @products = Product.all
    # render text: "in the index controller products = #{@products.name}"
  end
end
