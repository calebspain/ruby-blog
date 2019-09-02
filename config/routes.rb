Rails.application.routes.draw do
  get 'pages/home', to: 'pages#home'
  get 'article', to:'pages#parComments'
  get 'gallery', to: 'pages#gallery'
  get 'api/allUsers', to: 'pages#allUsers'

  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
