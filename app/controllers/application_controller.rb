class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here

  get "/hosts" do
    hosts = Host.all
    json_response(hosts)
  end

  get "/events" do
    events = Event.all
    json_response(events)
  end

  get "/events/:id" do
    events = Event.where(host_id: params[:id]).order(id: :desc)
    json_response(events)
  end

  post "/hosts" do
    host = Host.create(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    json_response(host)
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
    json_response(event)
  end
  patch "/events/:id" do
    event = Event.find(params[:id])
    event.update(
      title: params[:title],
      description: params[:description],
      date: params[:date],
      time: params[:time],
      venue: params[:venue],

    )
    json_response(event)
  end

  delete "/events/:id" do
    event = Event.find(params[:id])
    event.destroy
    json_response(event)
  end

  private

  def json_response(data)
    data.to_json
  end
end
