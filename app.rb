require 'sinatra/base'
require 'sinatra/assetpack'

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)
  #Less.paths <<  "#{App.root}/apps/css" 

  #puts "*** LESS: #{Less.paths}"
  register Sinatra::AssetPack

  assets do
    css :bootstrap, [
      '/css/bootstrap.css'
    ]

  end

  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
