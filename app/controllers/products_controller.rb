class ProductsController < ApplicationController

  # GET /products
  def index
    @products = Product.all
    # render text: "in the index controller products = #{@products.name}"
  end

  # GET /products/:id
  def show
    @product = Product.find(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # POST /products
  def create

    # Instantitate a new Product instance from the form fields with libe in the params hash
    product = Product.new(product_params)
    if product.save
      # It saved, so lets see this new product
      # render :show, status: :created, location: @product
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  # ProductsController#update method
  def update
    # Get the product to update
    @product = Product.find(params[:id])

    # Using strong params update this product
    # Product#update method
    if @product.update(product_params)
      redirect_to @product, notice: "You have updated the #{@product.name}"
    else
      # No worky, try again, show me the form you.
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, notice: "You have deleted the product"
  end

  private

  # Define which params are allowed to be used to create a Product
  def product_params
    params.require(:product).permit([:name, :description, :price])
  end

end
