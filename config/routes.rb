Rails.application.routes.draw do
  root 'main#portfolio'
  resources :questionnaires, :posts
  get '/portfolio',   to: 'main#portfolio', as: :portfolio
end
