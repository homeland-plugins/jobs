Homeland::Jobs::Engine.routes.draw do
  get '/jobs', to: 'jobs#index'
end
