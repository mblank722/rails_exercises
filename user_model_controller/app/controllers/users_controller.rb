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
    user=User.find(params[:id])
    render json: user
  end

  def update
    user=User.find(params[:id])
    #puts user[:id]
    #render json: user
    render 'create.html.erb'
  end

  def total

    render plain:"there are #{User.count} users in the User Table"
  end
end
