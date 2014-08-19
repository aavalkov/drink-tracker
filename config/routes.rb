Rails.application.routes.draw do
  match('reasons', {:via => :post, :to=> 'reasons#create'})
  match('reasons', {:via => :get, :to=> 'reasons#index'})
  match('reasons/:id', {:via => :delete, :to=> "reasons#destroy"})
end
