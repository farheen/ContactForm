Rails.application.routes.draw do
scope "(:locale)", locale: /en|de/, defaults: {locale: "en"}  do
  root 'api/v1/contact#create'
  namespace :api do
    namespace :v1 do
      get 'contact/new'
      post 'contact/create'
      get 'contact/index'
    end
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
