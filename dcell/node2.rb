require 'dcell'

DCell.start :id => "node2", :addr => "tcp://127.0.0.1:4001", :directory => {:id => "node1", :addr => "tcp://127.0.0.1:4000"}

loop {
  node = DCell::Node["node1"]
  duck = node[:duck_actor]
  duck.quack
  sleep 3
}