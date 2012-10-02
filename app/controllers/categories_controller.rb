class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end
	
	def create
		@category = Category.new(params[:category])
		
		if @category.save
  		flash[:success] = 'Category added'
  		redirect_to root_path
  	else
  		render "new"
  	end
  end
  
  def show
  	@category = Category.find_by_slug(params[:id])
  end
	
end
