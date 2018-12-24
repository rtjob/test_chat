Rails.application.routes.draw do
  # get 'chat/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chat#index'

  post "/chat/index" => "chat#index"
  get "/chat/index" => "chat#index"
  post "/chat/create" => "chat#create"
  
end
