Rails.application.routes.draw do
  resources :tasks
  resources :users
  get '/find_user' => 'users#find_user'
  get '/find_tasks' => 'tasks#find_tasks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
