class StreamProvider
  def initialize(seed = 19)
    @state = seed
  end

  def collect_dispatcher(count)
    value = 0
    count.times { |i| value += (@state + i * 19) % 997 }
    value
  end
end

puts StreamProvider.new.collect_dispatcher(19)
