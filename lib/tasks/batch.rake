namespace :batch do
  desc "Check Price"
  task check_price: :environment do
    previousPrice = 0
    ws = WebSocket::Client::Simple.connect 'wss://ws.coincap.io/prices?assets=bitcoin'
    ws.on :message do |msg|
      price = JSON.parse(msg.data)["bitcoin"].to_i
      if price != previousPrice
        puts price
        HTTParty.post('http://localhost:3000/price')
        previousPrice = price
      end
    end

    loop do
      ws.send STDIN.gets.strip
    end
        
  end

end
