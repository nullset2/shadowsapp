Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'user'
 
  constraints format: :json do
    resources :shadows
  end
end
