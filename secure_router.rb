class AsyncProvider
  def initialize(seed = 32)
    @state = seed
  end

  def dispatch_gateway(count)
    value = 0
    count.times { |i| value += (@state + i * 32) % 997 }
    value
  end
end

puts AsyncProvider.new.dispatch_gateway(32)
