class BooksController < ApplicationController
  def index
    @books = Book.all 
  end

  def show 
    id = params[:id]
    @book = Book.find(id)
    render json: {
      values: @book,
      message: 'Success'
    }, status: 200
  end
  
end
