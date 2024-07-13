Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :articles do
    resources :comments
  end
  get "up" => "rails/health#show", as: :rails_health_check
end
