require 'bundler'
Bundler.require

require './web'

use Rack::Typekit, kit: 'ohc4aiq'
use Rack::Static, urls: ["/css", "/images", "/js", "/fonts", "favicon.ico"], root: "public"
use Rack::Gauges, tracker: ENV['GAUGES_TRACKER_ID'] if ENV['GAUGES_TRACKER_ID']

run Web