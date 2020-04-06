Rails.application.routes.draw do
  resources :apartments do
    resources :tenants
  end

  root "apartments#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
