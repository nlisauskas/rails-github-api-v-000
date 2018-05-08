class SessionsController < ApplicationController
  def create
    resp = Faraday.post('https://github.com/login/oauth/access_token') do |req|
      req.params["client_id"] = ENV["CLIENT_ID"]
      req.params["client_secret"] = ENV["CLIENT_SECRET"]
      req.params["code"] = params["code"]
      req.headers["Accept"] = "applications/json"
    end
  end
end
