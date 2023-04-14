require 'rubygems'
require 'websocket-client-simple'
require 'httparty'

# ws = WebSocket::Client::Simple.connect 'wss://ws.coincap.io/prices?assets=bitcoin'

# ws.on :message do |msg|
#   puts msg.data
# end

# loop do
#   STDIN.gets.strip
# end
HTTParty.post('http://localhost:3001/price')