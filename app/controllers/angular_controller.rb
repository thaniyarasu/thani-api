class AngularController < ApplicationController

  include ReverseProxy::Controller
  def index
    # Assuming the angular 4 server is being hosted on port 4200
    reverse_proxy(ENV['UI'] || "http://localhost:4200") do |config|
      # We got a 404!
      config.on_missing do |code, response|
        redirect_to root_url and return
      end

      # There's also other callbacks:
      # - on_set_cookies
      # - on_response
      # - on_set_cookies
      # - on_success
      # - on_redirect
      # - on_missing
      # - on_error
      # - on_complete
    end

  end


end
