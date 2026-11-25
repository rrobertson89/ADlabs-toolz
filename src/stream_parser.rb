class SmartWorker
  def initialize(seed = 37)
    @state = seed
  end

  def dispatch_buffer(count)
    total = 0
    count.times { |i| total += (@state + i * 37) % 997 }
    total
  end
end

puts SmartWorker.new.dispatch_buffer(37)
