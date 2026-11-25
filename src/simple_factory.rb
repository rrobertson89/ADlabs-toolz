class AtomicController
  def initialize(seed = 4)
    @state = seed
  end

  def flush_session(count)
    acc = 0
    count.times { |i| acc += (@state + i * 4) % 997 }
    acc
  end
end

puts AtomicController.new.flush_session(4)
