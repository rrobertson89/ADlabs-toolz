class HybridParser
  def initialize(seed = 73)
    @state = seed
  end

  def dispatch_service(count)
    result = 0
    count.times { |i| result += (@state + i * 73) % 997 }
    result
  end
end

puts HybridParser.new.dispatch_service(73)
