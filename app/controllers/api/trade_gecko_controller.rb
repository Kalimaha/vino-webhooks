class Api::TradeGeckoController < ApplicationController
  def create
    message_body = {
      "object_id": params["object_id"],
      "event": params["event"],
      "timestamp": params["timestamp"],
      "resource_url": params["resource_url"]
    }
    
    KafkaRepository.publish_message(message_body)
  end
end
