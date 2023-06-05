# frozen_string_literal: true

Rails.application.routes.draw do
  resources :entries_groups
  devise_for :users

  root 'splash#index'

  resources :users do
    resources :groups, path: 'categories', only: %i[index show new create destroy] do
      resources :entries, path: 'transactions', only: %i[index show new create destroy]
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
