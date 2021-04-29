Rails.application.routes.draw do
  root "welcome#index"
  get "/auth/:provider/callback" => "sessions#create"
  get 'status' => 'status#index', defaults: { format: 'json' }
  delete "/logout" => "sessions#destroy"

  resources :retirements

  resources :events do
    resources :tickets
  end
end
