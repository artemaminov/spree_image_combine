Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :image_combines
    resources :image_combine_block_types
    resources :image_combine_block_positions
  end
end
