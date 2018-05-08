class SessionsController < ApplicationController
  def create
    resp = Faraday.post('https://github.com/login/oauth/access_token') do |req|
      
    end
  end
end
