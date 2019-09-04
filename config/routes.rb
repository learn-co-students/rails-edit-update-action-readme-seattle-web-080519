Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #PUT is meant to be used when replacing a whole resource. PATCH, on the other hand, is for used for sending a set of changes to a resource.
  resources :articles, only: [:index, :show, :new, :create]
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'
end
