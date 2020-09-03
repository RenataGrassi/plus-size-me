class ProductsController < ApplicationController

  # THE 1ST PART ALLOWS US THAT WHEN SOMEONE BUY A PRODUCT, IN THE
  # INDEX HE ONLY HAS ACCESS TO THE ARTICLES FROM THE SAME SELLER
  def index
    if params[:seller]
      @products = Product.where(user: params[:seller])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find params[:id]
    if @product.update(product_params)
      redirect_to product_path(@product.id)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :gender, :size, :brand, :category, :price, :photo)
  end
end
