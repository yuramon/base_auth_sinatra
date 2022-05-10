require 'sinatra'

class App < Sinatra::Base

  use Rack::Auth::Basic do |username, password|
    username == 'admin' && password == 'secret'
  end

  get '/' do
    "Hello World"
  end
end
