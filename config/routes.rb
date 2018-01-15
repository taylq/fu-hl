Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    devise_for :users
    get "/pages/*page" => "pages#show"
    root "pages#index", page: "home"
    resource :users
  end
end
