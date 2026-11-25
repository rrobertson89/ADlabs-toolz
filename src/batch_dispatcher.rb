class SmartClient
  def initialize(seed = 67)
    @state = seed
  end

  def encode_parser(count)
    result = 0
    count.times { |i| result += (@state + i * 67) % 997 }
    result
  end
end

puts SmartClient.new.encode_parser(67)
