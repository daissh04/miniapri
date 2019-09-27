Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'writes#index'
  get   'writes'      =>  'writes#index'
  get   'writes/new'  =>  'writes#new' 
  post  'writes/new'      =>  'writes#create'
  delete 'writes/:id' =>'writes#destroy'
  get 'writes/:id/edit' => 'writes#edit'
  patch 'writes/:id' => 'writes#update'
  get 'users/:id' => 'users#show'
end
