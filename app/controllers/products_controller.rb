class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product successfully created"
      redirect_to @product
    else
      flash[:error] = "Something went wrong"
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end
  

  def update
    @product = Product.find(params[:id])
      if @product.update_attributes(@product_params)
        flash[:success] = "Product was successfully updated"
        redirect_to @product
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    
    flash[:success] = 'Object was successfully deleted.'
    redirect_to root_path, status: :see_other
  end
  

  private
    def product_params
      params.require(:product).permit(:code)
    end
    
  
end
