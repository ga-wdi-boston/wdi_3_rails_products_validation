class ProductsController < ApplicationController

  # GET /products
  def index
    # Get a collection of all the products 
    # in the DB.
    # Behaves like an Array. 
    # SELECT * FROM products;
    @products = Product.all

    # By Default render the view with the 
    # same name as the action.
    # render :index
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
    # @product = Product.create(params)
    @product = Product.create(product_params)

    if @product.save
      # It saved, so lets see this new product
      redirect_to @product, notice: 'You created a new product'
    else
      # No worky, try again, show me the form you.
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
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
    redirect_to products_url, notice: "You have deleted the product"
  end
  
  private

  def set_title
    @title = "Awesome Products!"
  end

  def product_params
    params.require(:product).permit([:name, :description, :price, :category])
  end
end
