require "rspec"
# require "vim"
# require "pry-byebug"

class Array
  def bubble_sort
    n = self.length

    loop do
      swapped = false

      (n-1).times do |i|
        if self[i] > self[i+1]
          self[i], self[i+1] = self[i+1], self[i]
          swapped = true
        end
      end

      break if not swapped
    end

    self
  end
end

arr = [1, 5, 6, 4, 3, 2, 7, 9, 8, 0]
arr.bubble_sort
puts arr

# echo "arr" | ruby -e "puts gets.downcase"

# STDOUT.puts $stdout. #note this is close but missing something

# var = $stdout.itself
# print var #note:interesting result from this one.

# print arr
# $stderr.print "thread #{arr}\n"
# puts  arr
# puts self.inspect
# stdout.flush
# $stdout

describe 'Adding bubble sort to the Array class' do
  it 'Properly sorts an array' do
    arr = [w, a, e, s, r, d, f, v, b, n, l, i, j, h, u, v, g, y]
    expct(arr.bubble_sort).to eq(arr.sort)
  end
end
