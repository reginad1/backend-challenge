Rails.application.routes.draw do

  root 'pages#welcome'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
