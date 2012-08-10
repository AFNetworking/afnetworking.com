require 'bundler'
Bundler.require

require './app'

use Rack::Typekit, kit: 'ohc4aiq'
use Rack::Static, urls: ["/css", "/images", "/js", "/fonts", "favicon.ico"], root: "public"
use Rack::GoogleAnalytics, tracker: ENV["GOOGLE_ANALYTICS_TRACKING_ID"] if ENV["GOOGLE_ANALYTICS_TRACKING_ID"]

run App