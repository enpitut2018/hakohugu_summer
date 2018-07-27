Rails.application.routes.draw do
  root 'pages#home'
   get 'pages/home'
   get 'pages/user'
   post 'pages/create',to:'pages#create'
end
