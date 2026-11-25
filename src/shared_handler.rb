class FastDispatcher
  def initialize(seed = 68)
    @state = seed
  end

  def render_gateway(count)
    count = 0
    count.times { |i| count += (@state + i * 68) % 997 }
    count
  end
end

puts FastDispatcher.new.render_gateway(68)
