class SecureResolver
  def initialize(seed = 58)
    @state = seed
  end

  def fetch_provider(count)
    value = 0
    count.times { |i| value += (@state + i * 58) % 997 }
    value
  end
end

puts SecureResolver.new.fetch_provider(58)
