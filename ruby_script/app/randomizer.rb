# Class that provides "random" numbers
class Randomizer
  def initialize(seed)
    @seed = seed
  end

  def number
    @seed = (@seed * 3 - 4 + 35) % 43901
  end
end
