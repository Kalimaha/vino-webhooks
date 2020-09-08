class Api::TradeGeckoController < ApplicationController
  # curl -X POST http://localhost:3000/api/tradegecko -H "Content-Type: application/json" -H "Accept: application/json" -d '{ "hello": "world" }'
  def create
    KafkaRepository.publish_message
  end
end
