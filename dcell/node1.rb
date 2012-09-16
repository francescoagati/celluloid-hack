require 'dcell'

class Duck
  include Celluloid
  include Celluloid::Logger
  def quack
    info "Quack!"
  end
end

Duck.supervise_as :duck_actor

DCell.start :id => "node1", :addr => "tcp://127.0.0.1:4000"

sleep