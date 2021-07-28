Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '(:locale)' do
    post 'emails', to: 'emails#create', as: 'create_email'
    get 'emails/new', to: 'emails#new', as: 'new_email'
    root 'pages#index'
    get '/japanese', to: 'pages#japanese'
    get '/studyrecord', to: 'pages#studyrecord'
  end
end
