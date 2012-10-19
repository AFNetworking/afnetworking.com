class App < Sinatra::Base
  get '/' do
    @version = ENV['AFNETWORKING_VERSION'] || "1.0.0"

    haml :index
  end

  get '/download' do
    redirect "https://github.com/AFNetworking/AFNetworking/zipball/master"
  end
end
