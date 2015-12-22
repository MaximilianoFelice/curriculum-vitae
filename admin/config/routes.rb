Admin::Engine.routes.draw do
  resources :timeline_entries
  resources :expertise_entries
  resources :ratings
  root to: "application#welcome"
end
