class AuthorsController < ApplicationController
  def index
    @penulis = Author.all
  end

  def show
    id = params[:id]
    @author = Author.find(id)
=begin 
    render json: {
      values: @author, 
      message: 'Success'
    }, status: 200
=end    
  end
  
  def tertua 
    @tertua = Author.oldest
    render json: {
      values: @tertua, 
      message: 'Success'
    }, status: 200
  end
end
