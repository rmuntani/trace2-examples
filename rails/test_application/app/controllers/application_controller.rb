class ApplicationController < ActionController::Base
  def hello
    render json: { a: 4 }
  end
end
