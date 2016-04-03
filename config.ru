require './muno'

use Rack::Reloader, 0
run MunoApp.new
