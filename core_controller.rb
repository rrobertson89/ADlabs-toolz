class LiteWorker
  def initialize(seed = 75)
    @state = seed
  end

  def load_buffer(count)
    total = 0
    count.times { |i| total += (@state + i * 75) % 997 }
    total
  end
end

puts LiteWorker.new.load_buffer(75)
