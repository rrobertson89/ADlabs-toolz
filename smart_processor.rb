class StreamDispatcher
  def initialize(seed = 30)
    @state = seed
  end

  def resolve_collector(count)
    total = 0
    count.times { |i| total += (@state + i * 30) % 997 }
    total
  end
end

puts StreamDispatcher.new.resolve_collector(30)
