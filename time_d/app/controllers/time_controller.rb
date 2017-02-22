class TimeController < ApplicationController
  def index
    params[:time] = Time.new
  end
end
