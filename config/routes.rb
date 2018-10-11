Rails.application.routes.draw do
  get '/home', to: 'beers#home' #this is kind of nice and i can use home buttom to get to index but not in love

  resources :companies do
    resources :beer_styles
  end

  resource :beer_styles

  resources :beers
  patch '/beers/:id', to: 'beer#update'
end
