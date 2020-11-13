# frozen_string_literal: true

require_relative './user'
require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

# Checks how much space the customer uses on the Dracula
get '/v1/:hi' do
  content_type :json
  User.new(params[:hi]).serialize.to_json
end

Sinatra::Application.run!
