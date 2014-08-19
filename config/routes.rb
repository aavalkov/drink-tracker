Rails.application.routes.draw do
  match('reasons', {:via => :get, :to=> 'reasons#index'})
  match('reasons', {:via => :post, :to=> 'reasons#create'})
end
