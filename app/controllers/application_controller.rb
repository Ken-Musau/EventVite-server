class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here

  get "/hosts" do
    hosts = Host.all
    hosts.to_json
  end

  get "/events" do
    events = Event.all
    events.to_json
  end
end
