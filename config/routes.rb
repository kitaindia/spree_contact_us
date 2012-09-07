Spree::Core::Engine.routes.draw do

  resources :contacts,
    :controller => 'contact_us/contacts',
    :only       => [:new, :create, :index]
  match 'contact-us' => 'contact_us/contacts#new', :as => :contact_us
  
  namespace :admin do
    resources :contacts
  end
end
