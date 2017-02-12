Rails.application.routes.draw do
  resources :categories
  resources :tasks
  resources :users
  get '/find_user' => 'users#find_user'
  get '/find_user_tasks' => 'tasks#find_tasks'
  get '/get_category_tasks' => 'categories#get_tasks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
