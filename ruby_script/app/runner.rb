require_relative './randomizer'

class Runner
  def initialize(num_of_numbers, randomizer: Randomizer, seed: 3)
    @randomizer = randomizer.new(seed)
    @num_of_numbers = num_of_numbers
  end

  def run
    @num_of_numbers.times do |num|
      puts "'Random' number generated: #{@randomizer.number}"
    end
  end
end
