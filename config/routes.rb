Rails.application.routes.draw do
  get 'contacts', to: 'contacts#index'
  post 'contacts', to: 'contacts#create'
end
