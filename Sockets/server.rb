require 'socket'

server = TCPServer.open(2000)   # Listen to port 2000
loop {                          # Servers run forever
  client = server.accept        # Wait for a client to connect
  client.puts(Time.now.ctime)
  client.puts "Closing the connection. Don't know what else to do ;)"
  client.close
}
