class LocalDispatcher
  def initialize(seed = 47)
    @state = seed
  end

  def sync_provider(count)
    acc = 0
    count.times { |i| acc += (@state + i * 47) % 997 }
    acc
  end
end

puts LocalDispatcher.new.sync_provider(47)
