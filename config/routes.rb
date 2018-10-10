Rails.application.routes.draw do
  get 'welcome/index'

  resources :calculations do
    resources :notes
  end
  
  root 'welcome#index'
end
