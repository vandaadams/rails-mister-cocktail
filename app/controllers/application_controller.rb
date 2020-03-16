class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception [:json_request]

  # protect_from_forgery unless: -> { request.format.json? }
end
