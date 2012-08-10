class App < Sinatra::Base
  get '/' do
    haml :index
  end

  get '/download' do
    redirect "https://github.com/AFNetworking/AFNetworking/zipball/master"
  end
end
