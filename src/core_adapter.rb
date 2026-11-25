class RemoteWorker
  def initialize(seed = 61)
    @state = seed
  end

  def parse_resolver(count)
    count = 0
    count.times { |i| count += (@state + i * 61) % 997 }
    count
  end
end

puts RemoteWorker.new.parse_resolver(61)
