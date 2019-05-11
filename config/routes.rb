Rails.application.routes.draw do
  scope module: :v1 do
    post 'signup', to: 'users#create'
    resources :todos, except: %i[edit new] do
      resources :items, except: %i[edit new] do
        resources :comments, except: %i[edit new]
      end
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
end
