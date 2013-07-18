require 'rubygems'
require 'sinatra/base'

require 'coffee-script'
require 'sass'
require 'slim'

class SassEngine < Sinatra::Base

  set :views,   File.dirname(__FILE__)    + '/assets/sass'
  set :scss,    {style: :compact, debug_info: false}

  get '/css/*.css' do
    filename = params[:splat].first
    sass filename.to_sym
  end

end

class CoffeeEngine < Sinatra::Base

  set :views,   File.dirname(__FILE__)    + '/assets/coffeescript'

  get "/js/*.js" do
    filename = params[:splat].first
    coffee filename.to_sym
  end

end

class PartialEngine < Sinatra::Base

  set :views,   File.dirname(__FILE__)    + '/views/pages'

  get "/pages/*.html" do
    filename = params[:splat].first
    slim filename.to_sym
  end

end

class ODMS < Sinatra::Base

  use SassEngine
  use CoffeeEngine
  use PartialEngine

  set :views,        File.dirname(__FILE__) + '/views'
  set :public_dir,   File.dirname(__FILE__) + '/public'

  set :slim, format: :html5
  set :partial_template_engine, :slim
  enable :partial_underscores

  get '/' do
    slim :index
  end

  if __FILE__ == $0
    ODMS.run! :port => 4000
  end

end
