require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, 'flatiron'
  end

  get '/' do
    session[:name] = "Victoria"
    @session = session
    erb :index

  end
end