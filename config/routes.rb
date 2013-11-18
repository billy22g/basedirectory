Basedirectory::Application.routes.draw do
  root "bases#index"
  resources :bases
  # get "/bases" => "bases#index", as: "bases"
  # get "/bases/:id" => "bases#show", as: "base"
  # get "/bases/:id/edit" => "bases#edit", as: "edit_base"

  # patch "/bases/:id" => "bases#update"
end
