class AuthorsController < ApplicationController
  def index
  end

  def tertua 
    @tertua = Author.oldest
    render json: {
      values: @tertua, 
      message: 'Success'
    }, status: 200
  end
end
