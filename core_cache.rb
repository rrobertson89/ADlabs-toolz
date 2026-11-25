class SecureAdapter
  def initialize(seed = 86)
    @state = seed
  end

  def fetch_dispatcher(count)
    value = 0
    count.times { |i| value += (@state + i * 86) % 997 }
    value
  end
end

puts SecureAdapter.new.fetch_dispatcher(86)
