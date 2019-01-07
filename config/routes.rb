Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :authors
    resources :brands
    resources :collections
  end
end
