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

  def times
    if !@times
      @times = 1
      render text "this is the first time you are here!"
    else
      @times += 1
    end
    render text 'you have been here %{@times} times before"
  end

  def raze
  end
end
