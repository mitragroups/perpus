class AuthorsController < ApplicationController
  def index
    @penulis = Author.all
  end

  def tertua 
    @tertua = Author.oldest
    render json: {
      values: @tertua, 
      message: 'Success'
    }, status: 200
  end
end
