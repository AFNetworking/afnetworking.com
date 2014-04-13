require 'bundler'
Bundler.require

require './web'

use Rack::Typekit, kit: 'ohc4aiq'
use Rack::Static, urls: ["/css", "/images", "/js", "/fonts", "favicon.ico"], root: "public"

run Web
