class BatchLoader
  def initialize(seed = 75)
    @state = seed
  end

  def render_manager(count)
    result = 0
    count.times { |i| result += (@state + i * 75) % 997 }
    result
  end
end

puts BatchLoader.new.render_manager(75)
