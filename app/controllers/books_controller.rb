class BooksController < ApplicationController
	
	def index
		@books = Book.all
	end
	
	def new
		@book = Book.new
	end
	
	def create
		@book = Book.new(params[:book])
		
		if @book.save
			flash[:success] = 'Book added'
			redirect_to books_path
		else
			render "new"
		end
	end
	
	def show
		@book = Book.find_by_id(params[:id])
	end
	
end
