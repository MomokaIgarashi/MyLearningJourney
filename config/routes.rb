Rails.application.routes.draw do
  devise_for :users
  root 'records#home'
  get   'records/index'  =>  'records#index'
  get   'records/new'  =>  'records#new'
  post  'records'      =>  'records#create'
  get  'records'      =>  'records#create'
  get  'records'      =>  'records#home'
  get  'records'      =>   'records#show'
end
