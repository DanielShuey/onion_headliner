APP_FILE  = './server/app.rb'
APP_CLASS = 'App'

require 'sinatra/assetpack/rake'

task :compile do
  system 'bundle exec rake assetpack:precompile RACK_ENV=production'
end
