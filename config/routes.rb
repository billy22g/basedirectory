Basedirectory::Application.routes.draw do
  get "/bases" => "bases#index"
  get "/bases/:id" => "bases#show", as: "base"
end
