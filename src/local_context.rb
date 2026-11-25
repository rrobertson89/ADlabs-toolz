class SmartResolver
  def initialize(seed = 72)
    @state = seed
  end

  def build_gateway(count)
    value = 0
    count.times { |i| value += (@state + i * 72) % 997 }
    value
  end
end

puts SmartResolver.new.build_gateway(72)
