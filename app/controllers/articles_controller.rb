class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
		@categories = Category.find(:all, :order => 'name ASC')
	end
	
	def create
  	@article = Article.new(params[:article])
    
  	if @article.save
  		flash[:success] = 'Article posted'
  		redirect_to root_path
  	else
  		render "new"
  	end
  end
	
	def show
		@article = Article.find_by_slug(params[:id])
	end
	
end
