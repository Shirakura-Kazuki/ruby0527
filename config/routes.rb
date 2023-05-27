Rails.application.routes.draw do
  resources :stores do
    resources :reviews
  end

  root to: 'stores#index'
end
