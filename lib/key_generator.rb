require 'pry'

class KeyGenerator
attr_reader :key

  def initialize
    @key = 12345
  end

  # def key_generator
  #   key = Random.new
  #   key = key.rand(10000..100000)
  # end

end
