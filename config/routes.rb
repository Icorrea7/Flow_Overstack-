Rails.application.routes.draw do
  devise_for :users
  root 'questions#index'
  resources :questions do
    resources :answers, only: [:create]
    resources :comentarios, only: [:create]
    resources :votes, only: [:destroy]
  end
  post 'votes/answer/:id' => 'answers#sum', as: 'answers_votes'

  post 'votes/:id' => 'questions#sum', as: 'question_votes'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
