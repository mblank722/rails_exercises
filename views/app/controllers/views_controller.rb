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
  end

  def raze
  end
end
