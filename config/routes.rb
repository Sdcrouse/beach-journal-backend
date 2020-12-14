Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :beaches, only: [:index, :create, :destroy] do
        resources :journal_entries, only: [:create, :destroy]
        # Stretch goal: Refactor this with shallow nesting.
        # See https://guides.rubyonrails.org/routing.html#shallow-nesting
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
