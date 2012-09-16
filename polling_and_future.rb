require 'celluloid'

class Ping
  include Celluloid
  include Celluloid::Logger

  def initialize
    @counter=0
  end
  
  def pong
    @counter=@counter + 1
    info "pong"
    "pong"
  end
  
  def get_counter
    @counter
  end
  
end

ping1=Ping.new

ping1.pong
ping1.pong
ping1.pong
ping1.pong
ping1.pong

puts ping1.get_counter

ping1.pong!
ping1.pong!
ping1.pong!
ping1.pong!
ping1.pong!

sleep 2

puts ping1.get_counter
