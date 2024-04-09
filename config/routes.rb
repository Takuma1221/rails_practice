Rails.application.routes.draw do
  get 'company/new'
  get 'company/index'
  get 'users/new'
  get 'users/index'
  root "static_pages#home"
  get  "/contact",  to: "users#new"
  get  "/usersIndex",  to: "users#index"
  get  "/addCompany",  to: "company#new"
  get  "/companyIndex",  to: "company#index"
  resources :users
  resources :company
end
