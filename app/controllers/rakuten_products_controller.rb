class RakutenProductsController < ApplicationController
    def create
        @product = Product.find(params[:product_id])
        @rakuten_product = @product.rakuten_products.create(rakutem_product_params)
        redirect_to product_path(@product)
    end


    def destroy
        @product = Product.find(params[:product_id])
        @rakuten_product = @product.rakuten_products.find(params[:id])
        @rakuten_product.destroy
        flash[:success] = 'Object was successfully deleted.'
        redirect_to product_path(@product), status: :see_other
    end
    
    private
        def rakutem_product_params
            params.require(:rakuten_product).permit(:code, :sku, :price)
        end
    
end
