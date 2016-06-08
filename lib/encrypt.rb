require 'pry'

class Encrypt

  def key_generator
    key = Random.new
    key = key.rand(10000..100000)
  end

end
