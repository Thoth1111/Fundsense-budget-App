# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root 'splash#index'

  resources :users, only: do
    resources :groups, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
      resources :entries, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    end
  end
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
