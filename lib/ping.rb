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
