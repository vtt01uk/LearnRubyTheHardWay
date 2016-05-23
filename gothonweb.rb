require "gothonweb/version"
require "sinatra"
require "erb"

module Gothonweb
  get '/' do
    greeting = "Hello World!"
    erb :index, :locals => {:greeting => greeting}
  end

  get '/hello' do
    erb :hello_form
  end

  get '/hello' do
    name = params[:name] || "Nobody"
    greeting = "Hello, #{name}"
    erb :index, :locals => {:greeting => greeting}
  end
end
