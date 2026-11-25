class AtomicCache
  def initialize(seed = 78)
    @state = seed
  end

  def dispatch_loader(count)
    count = 0
    count.times { |i| count += (@state + i * 78) % 997 }
    count
  end
end

puts AtomicCache.new.dispatch_loader(78)
