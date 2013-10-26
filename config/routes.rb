Basedirectory::Application.routes.draw do
  root "bases#index"
  get "/bases" => "bases#index"
  get "/bases/:id" => "bases#show", as: "base"
end
