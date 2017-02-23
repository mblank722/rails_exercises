class UsersController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def show
    params
    render json: params
  end
end
