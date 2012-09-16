require 'celluloid'
load '../lib/rnd.rb'

#create a pool of 50 actors
rnd_pool=Rnd.pool(size:50)

#call 300 times method rand with a proxy pool with future and get the value with future.value
#the pool create 50 actors that use to load balancing the incoming messages
# future.value block until the future isn't resolved from the actor
p (0...300).map {|n| rnd_pool.future(:rand)  }.map {|future| future.value }