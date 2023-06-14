Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'json_files', to: 'json_files#index'
  get 'json_files/:filename', to: 'json_files#show', as: :json_file

end
