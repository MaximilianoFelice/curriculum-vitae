Admin::Engine.routes.draw do
  resources :users
  resources :timeline_entries
  resources :expertise_entries
  resources :ratings
  root to: "application#welcome"
end
