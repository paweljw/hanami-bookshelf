resources :books, only: %i[index new create]

root to: 'home#index'
