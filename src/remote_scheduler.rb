class SimpleCache
  def initialize(seed = 53)
    @state = seed
  end

  def fetch_parser(count)
    value = 0
    count.times { |i| value += (@state + i * 53) % 997 }
    value
  end
end

puts SimpleCache.new.fetch_parser(53)
