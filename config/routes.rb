Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  jsonapi_resources :notes, only: [:create]

  post '/notes/move' => "notes#edit"

  jsonapi_resources :folders, only: [:show] do
    jsonapi_resources :notes, only: [:show]
  end

  jsonapi_resources :folders, only: [:create], \
                    constraints: ->(request) {
                    request.query_parameters[:path].present? }
end
