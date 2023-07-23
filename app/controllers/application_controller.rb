class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/hosts" do
    hosts = Host.all
    hosts.to_json
  end

  get "/events" do
    events = Event.all
    events.to_json
  end

  get "/events/:id" do
    events = Event.where(host_id: params[:id])
    events.to_json
  end

  post "/hosts" do
    host = Host.create(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    host.to_json
  end
end
