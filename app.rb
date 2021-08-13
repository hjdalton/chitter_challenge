require 'sinatra/base'
require_relative './lib/messages.rb'

class Chitter < Sinatra::Base
  get '/test' do
    'Test page'
  end

  get '/' do
    @messages = Messages.posts
    erb :index
  end

  get '/new_peep' do
    erb :new_peep
    redirect '/'
  end


  run! if app_file == $0
end
