Rails.application.routes.draw do
  resources :questionnaires  
  root 'main#index'
end
