source "https://rubygems.org"

ruby '2.2.0'

group :default do
  gem "thin"
  gem "sinatra", git: 'git@github.com:sinatra/sinatra.git', branch: :master
  gem "sinatra-assetpack", git: 'git@github.com:rstacruz/sinatra-assetpack.git', branch: :master
  gem "sinatra-contrib", git: 'git@github.com:sinatra/sinatra-contrib.git', branch: :master
  gem "slim"
  gem "rest-client", require: "rest_client"
  gem "sass"
  gem "activesupport", require: 'active_support/inflector'
end

group :development, :default do
  gem "wordnet"
  gem "wordnet-defaultdb"
  gem "linguistics"
end

group :development do
  gem "pry"
  gem "pry-rescue"
end
