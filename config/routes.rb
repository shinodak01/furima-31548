Rails.application.routes.draw do
  devise_for :users
  # get 'items/index'
  # get 'item/index'
  root to: 'items#index'
end
