class ProductsController < ApplicationController

	def index
		@products = Product.all.order("created_at DESC")
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
			redirect_to products_path
		else
			render 'new'
		end
		
	end


	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(product_params)
			redirect_to product_path
		else
			render 'edit'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
	end

	private

	def product_params
		params.require(:product).permit(:title, :category, :subcategory, :price, :negotiable, :description, :name, :phone_number, :email, :photos)
	end
end
