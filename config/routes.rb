Rails.application.routes.draw do
  # resources :generalledgers
  resources :cashiers do
    resources :generalledgers, module: :cashiers
  end
  resources :agents
  resources :payments
  resources :check_vouchers do
    resources :generalledgers, module: :check_vouchers
  end
  resources :periods
  resources :journal_vouchers do
    resources :generalledgers, module: :journal_vouchers
  end
  resources :accounts
  resources :banks
  resources :branches
  resources :sub_accounts
  resources :payees
  resources :ledgers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
end
