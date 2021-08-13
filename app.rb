require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/messages.rb'
require_relative './lib/new_peep.rb'

class Chitter < Sinatra::Base

  enable :sessions

  get '/' do
    @messages = Messages.posts
    erb :index
  end

  get '/new_peep' do
    erb :new_peep
  end

  post '/new_peep' do
    New.add(message: params[:new_peep])
    redirect '/'
  end


  run! if app_file == $0
end
