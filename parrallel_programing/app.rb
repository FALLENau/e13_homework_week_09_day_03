def puts_later(string, seconds_to_wait)
  return Thread.new do
    sleep(seconds_to_wait)
    puts string
  end
end

puts "Hi"

thread = puts_later("Bye", 4)

late_thread = puts_later("Am I late?", 3)

puts "What is up"
thread.join
late_thread.join
