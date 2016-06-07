require 'sinatra/base'
require 'json'

class Holidays < Sinatra::Base
  get '/' do
    headers 'Access-Control-Allow-Origin' => '*'
    @json = File.read('holidays.json')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
