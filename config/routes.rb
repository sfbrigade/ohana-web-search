HumanServicesFinder::Application.routes.draw do
  root :to => "home#index"
  resources :organizations, :only => [:index]
  get "organizations/*id/" => "organizations#show", :as => "location"
  get "/about" => "about#index"
  post "/feedback" => "about#index"
  get '.well-known/status' => "status#get_status"
  get '/mu-eb1fb975-6fa67f08-d4888dcd-046227b4' do
    '42'
  end
end
