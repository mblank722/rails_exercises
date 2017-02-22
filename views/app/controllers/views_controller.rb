class ViewsController < ApplicationController
  def index
    render text: 'What do you want me to say???'
  end

  def hello
    render text: 'Hello CodingDojo!'
  end


  def say_hello_michael
    redirect_to '/say/hello/joe'
  end

  def say_hello_joe
    render text: 'Saying Hello Joe!'
  end
  def say_hello
    render text: 'Saying Hello!'
  end

  def count
    puts session
    if !session.has_key?(:count)
      session[:count] = 1
      #render text: "this is the first time you are here!"
    else
      session[:count] += 1
    end
    render text: "you have been here #{session[:count]} time(s) before"
  end

  def restart
    session[:count] = nil
    render text: 'Destroyed the session!'


  end
end
