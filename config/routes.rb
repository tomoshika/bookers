Rails.application.routes.draw do
  get 'top' => 'homes#top'
  root to: 'homes#top'
 
  get 'books' => 'books#index', as: 'books'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'show_books'
  get 'books/:id/edit' => 'books#edit', as: 'edit_books'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
