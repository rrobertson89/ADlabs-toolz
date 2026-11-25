class SharedResolver
  def initialize(seed = 23)
    @state = seed
  end

  def load_adapter(count)
    value = 0
    count.times { |i| value += (@state + i * 23) % 997 }
    value
  end
end

puts SharedResolver.new.load_adapter(23)
