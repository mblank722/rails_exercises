class UsersController < ApplicationController
  def index
    @users=User.all
    render json: @users
  end

  def new
    render 'new.html.erb'
  end

  def create
    name=(0...25).map { ('a'..'z').to_a[rand(26)] }.join
    render text: name
    User.create(name: name)
  end

  def show
  puts user=User.find(params[:id])
    render json: user
  end

  def update
  end

  def total
    render plain:"there are #{session[:count]} users in the User Table"
  end
end
