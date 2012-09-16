require 'celluloid'
load 'lib/ping.rb'

ping1=Ping.new

ping1.pong
ping1.pong
ping1.pong
ping1.pong
ping1.pong

puts ping1.get_counter
#update to async
ping1.pong!
ping1.pong!
ping1.pong!
ping1.pong!
ping1.pong!

sleep 2

puts ping1.get_counter
