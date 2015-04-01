require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

require "#{File.dirname(__FILE__)}/onion.rb"

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)
  set :public_folder, 'public'
  set :views, settings.root + '/views'
  set :slim, layout: :app

  register Sinatra::AssetPack
  register Sinatra::MultiRoute

  assets do
    clear_ignores!
    serve '/js', from: "./js"
    serve '/css', from: "./css"
    serve '/img', from: "./img"

    # The second parameter defines where the compressed version will be served.
    # (Note: that parameter is optional, AssetPack will figure it out.)
    js :app, "/js/app.js", ["/js/*.js"]
    css :app, "/css/app.css", ["/css/*.css"]

    js_compression  :jsmin  # :jsmin | :yui | :closure | :uglify
    css_compression :simple   # :simple | :sass | :yui | :sqwish

    #cache_dynamic_assets true
  end

  get '/' do
    @resource = 7.times.map { Onion.generate }
    slim :home
  end
end
