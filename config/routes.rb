Rails.application.routes.draw do
  resources :people
  get 'download', to: 'pages#download'
  get 'preview', to: 'pages#preview'

  root 'pages#home'
end
