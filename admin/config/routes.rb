Admin::Engine.routes.draw do
  resources :ratings
  root to: "application#welcome"
end
