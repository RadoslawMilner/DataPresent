Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "statistics#index"
  get 'statistics/index'

  resources :charts do
    # to get search routes use collection. moreover we don't need /id to that
    collection do
      get 'sporters_by_age'
    end
  end
end
