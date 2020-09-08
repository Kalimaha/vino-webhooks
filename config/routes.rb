Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    post "tradegecko", to: "trade_gecko#create"
  end
end
