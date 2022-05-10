Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'tasks#index'
  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/new', to: 'tasks#new', as: :new_task
  get '/task/:id', to: 'tasks#show', as: :task
  get 'task/:id/edit', to: 'tasks#edit', as: :edit
  patch '/task/:id', to: 'tasks#update'
  post '/tasks', to: 'tasks#create'
  delete '/task/:id', to: 'tasks#destroy'
end
