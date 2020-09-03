class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  # THE 1ST PART ALLOWS US THAT WHEN SOMEONE BUY A PRODUCT, IN THE
  # INDEX HE ONLY HAS ACCESS TO THE ARTICLES FROM THE SAME SELLER

  def index
    if params[:search]
      @products = Product.product_search(params[:search])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product

    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    authorize @product
  end

  def update
    @product = Product.find(params[:id])
    authorize @product

    if @product.update(product_params)
      redirect_to product_path(@product.id)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    authorize @product

    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :gender, :size, :brand, :category, :price, :photo)
  end
end
