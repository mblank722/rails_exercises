class TimeController < ApplicationController
  def index
    session[:test] = "hello world"

  end
end
