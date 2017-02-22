Rails.application.routes.draw do
  get '/' => 'views#index'

  get 'say/hello/michael' => 'views#say_hello_michael'

  get 'say/hello/joe' => 'views#say_hello_joe'

  get 'say/hello' => 'views#say_hello'

  get 'hello' => 'views#hello'

  get '/times' => 'views#count'

  get 'views/raze'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
