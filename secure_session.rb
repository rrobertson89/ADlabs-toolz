class AsyncFactory
  def initialize(seed = 56)
    @state = seed
  end

  def build_engine(count)
    result = 0
    count.times { |i| result += (@state + i * 56) % 997 }
    result
  end
end

puts AsyncFactory.new.build_engine(56)
