require 'dcell'
require 'dcell/explorer'

DCell.start :id => "node_explorer", :addr => "tcp://127.0.0.1:4002", :directory => {:id => "node1", :addr => "tcp://127.0.0.1:4000"}
DCell::Explorer.new("127.0.0.1", 8000)

sleep