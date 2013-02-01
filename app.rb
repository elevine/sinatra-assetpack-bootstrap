require 'sinatra/base'
require 'sinatra/assetpack'

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)

  register Sinatra::AssetPack

  assets do

    js :main, '/js/main.js', [
      '/js/vendor/jquery*.js',
      '/js/vendor/bootstrap-transition.js',
      '/js/vendor/bootstrap-alert.js',
      '/js/vendor/bootstrap-button.js',
      #'/js/vendor/bootstrap-carousel.js',
      '/js/vendor/bootstrap-collapse.js',
      '/js/vendor/bootstrap-dropdown.js',
      #'/js/vendor/bootstrap-modal.js', 
      #'/js/vendor/bootstrap-tooltip.js',
      #'/js/vendor/bootstrap-popover.js', 
      #'/js/vendor/bootstrap-scrollspy.js', 
      #'/js/vendor/bootstrap-tab.js',
      #'/js/vendor/bootstrap-typeahead.js', 
      #'/js/vendor/bootstrap-affix.js',
    ]

    css :bootstrap, [
      '/css/theme.css',
      '/css/responsive.css'
    ]

    prebuild true

  end

  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
