Admin::Engine.routes.draw do
  resources :expertise_entries
  resources :ratings
  root to: "application#welcome"
end
