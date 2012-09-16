require 'celluloid'
load '../lib/ping.rb'

ping1=Ping.new

#sync sending message
ping1.pong
ping1.pong
ping1.pong
ping1.pong
ping1.pong

puts ping1.get_counter

#async sending message
ping1.async :pong
ping1.async :pong
ping1.async :pong
ping1.async :pong
ping1.async :pong

sleep 2

puts ping1.get_counter
