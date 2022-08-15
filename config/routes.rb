Rails.application.routes.draw do
  resources :people
  get 'people/pdf/:id', to: 'people#pdf', as: 'people_pdf'

  get 'download', to: 'pages#download'
  get 'preview', to: 'pages#preview'

  root 'pages#home'
end
