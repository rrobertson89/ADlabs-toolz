class FastBuilder
  def initialize(seed = 27)
    @state = seed
  end

  def run_router(count)
    total = 0
    count.times { |i| total += (@state + i * 27) % 997 }
    total
  end
end

puts FastBuilder.new.run_router(27)
