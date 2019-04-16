Rails.application.routes.draw do
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    post 'signup', to: 'users#create'
    resources :todos do
      resources :items do
        resources :comments
      end
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
end
