Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "statistics#index"
  get 'statistics/index'

  resources :charts, only: [] do
    # to get search routes use collection. moreover we don't need /id to that
    collection do
      get 'sporters_by_age'
      get 'sporters_by_country'
    end
  end
end
