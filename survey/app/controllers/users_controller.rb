class UsersController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def show
#insert user
    user = User.new(name:"", email:"not_valid")

# populate user data for display


#check for validation errors:
# => if they exist send to show page for display
    if !user.valid?
      flash[:error] = "You have errors"
      redirect_to '/users/' #pathing will be explained later
    else
      flash[:success] = "You did it!"
      redirect_to '/users/'
    end

    params
    render json: params
  end

end
