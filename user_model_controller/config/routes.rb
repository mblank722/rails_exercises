Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# alias mkm='python manage.py migrate'
get '/' => 'users#index'

get '/' => 'users#index'

get 'say/hello/michael' => 'views#say_hello_michael'
