def increment(n)
  n + 1
end

sum = 0

thread = (1..10).map do
  Thread.new do
    100_000.times { sum = increment(sum) }
  end
end

thread.each(&:join)
puts sum 
