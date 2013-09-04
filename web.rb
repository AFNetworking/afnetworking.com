class Web < Sinatra::Base
  get '/' do
    @version = File.basename(ENV['AFNETWORKING_DOWNLOAD_URL'], ".zip").scan(/\d+/)[0...3].join(".") || "0.0.0"

    haml :index
  end

  get '/download' do
    redirect ENV['AFNETWORKING_DOWNLOAD_URL']
  end
end
