class Api::V1::MessagesController < ApplicationController
  def random_greeting
    message = Message.order('RANDOM()').first
    render json: { greeting: message.message }
  end
end
