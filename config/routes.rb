Rails.application.routes.draw do
  root to: 'posts#show'
  resources :posts, only: :show do
    resources :comments
  end
end
