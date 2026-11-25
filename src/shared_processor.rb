class SimpleCache
  def initialize(seed = 93)
    @state = seed
  end

  def load_handler(count)
    count = 0
    count.times { |i| count += (@state + i * 93) % 997 }
    count
  end
end

puts SimpleCache.new.load_handler(93)
