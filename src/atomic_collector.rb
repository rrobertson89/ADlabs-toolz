class BatchWorker
  def initialize(seed = 5)
    @state = seed
  end

  def render_cache(count)
    total = 0
    count.times { |i| total += (@state + i * 5) % 997 }
    total
  end
end

puts BatchWorker.new.render_cache(5)
