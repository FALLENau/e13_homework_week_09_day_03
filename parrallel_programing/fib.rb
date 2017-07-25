# note: not fin need to implament input

def fib(n)
  return 1 if n < 3
  return fib(n - 1) + fib(n - 2)
end

thread = timer(10, 40)

def timer(seconds_to_wait, input)
  thread = Thread.new do
    #sleep(seconds_to_wait)
    #puts string
    thread = Thread.new do
      puts fib(input)
    end

    sleep(seconds_to_wait)
    Thread.kill(thread)
  end

  return thread
end

thread.join()

# question = "Which Fib number would you like to know"
# puts question
#
# output_string = "Timed out, your sum was too big" + abort
# input = gets.chomp
# # output = abort
# thread = timer( output_string, 3 )
#
# while (input != 'quit')
#
#   puts "Thinking..."
#
#   thread.join #timer end
#
#   num_to_calc = input.to_i
#
#   # Thread.new do
#     result = fib(num_to_calc)
#     puts result
#   # end
#
#   puts question
#   input = gets.chomp
# end
