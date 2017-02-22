class UsersController < ApplicationController
  def index
    @users=User.all
    render json: @users
  end

  def new
    render 'new.html.erb'
  end

  def create
  end

  def show
  end

  def update
  end

  def total
    render text:"there#{session[:count]} users in the User Table"
  end
end
