class Rnd
  include Celluloid
  
  def rand
    random_number=Random.rand
    sleep 2
    return random_number
  end
  
end