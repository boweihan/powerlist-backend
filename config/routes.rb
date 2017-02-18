Rails.application.routes.draw do
  resources :categories
  resources :tasks
  resources :users
  get '/find_user' => 'users#find_user'
  get '/find_category' => 'categories#find_category'
  get '/find_user_tasks' => 'tasks#find_user_tasks'
  get '/get_category_tasks' => 'tasks#get_category_tasks'
  get '/find_user_categories' => 'categories#find_user_categories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
