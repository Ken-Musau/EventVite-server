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

  get "/events/:id" do
    events = Event.where(host_id: params[:id]).order(id: :desc)
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

  post "/events" do
    event = Event.create(
      title: params[:title],
      description: params[:description],
      image_url: params[:image_url],
      date: params[:date],
      time: params[:time],
      venue: params[:venue],
      price: params[:price],
      host_id: params[:host_id],
    )
    event.to_json
  end
end
