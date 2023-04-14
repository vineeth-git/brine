
ws = WebSocket::Client::Simple.connect 'wss://ws.coincap.io/prices?assets=bitcoin'

ws.on :message do |msg|
	  puts msg.data
end

loop do
	  ws.send STDIN.gets.strip
end
