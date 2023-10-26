Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "about" => "public#about", as: :about
  get "blog" => "public#blog", as: :blog
  get "contact" => "public#contact", as: :contact

  # Defines the root path route ("/")
  root to: "public#homepage"
end
