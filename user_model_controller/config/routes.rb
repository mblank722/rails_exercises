Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# alias mkm='python manage.py migrate'
  get '/users' => 'users#index'

  get '/users/new' => 'users#new'

  get '/users/create' => 'users#create'

  get '/users/:id' => 'users#show'

  get '/users/:id/edit' => 'users#update'

  get '/users/total' => 'users#total'
end
