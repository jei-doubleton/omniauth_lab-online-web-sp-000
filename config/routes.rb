Rails.application.routes.draw do
  # Add your routes here
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/app/:provider/callback', to: 'sessions#create', via: [:get, :post]

  get '/', to: 'welcome#home'
end
