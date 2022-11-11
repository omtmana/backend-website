Rails.application.routes.draw do
  root 'contacts#index'
  
  get 'contacts', to: 'contacts#index'
  post 'contacts', to: 'contacts#create'
end
