Rails.application.routes.draw do
  get 'static_pages/project'
  get 'static_pages/new'
  get 'static_pages/create'
  get 'static_pages/about'
  get 'static_pages/home'
  get 'static_pages/resume'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
