=begin
* create array
*write method that goes through the array and find the called number
*return the index

=end

*release 1
array = [14, 24, 34, 44, 54]

def search(array, n)
integer = nil
    array.length.times do |i|
      if array[i] == n
        integer = i
      end
    end
  p integer
end

search(array, 44)

#release 2
=begin
*initiate array that is empty but intialize with 100
*creater method that starts w 0 and 1 set to variables and add
*math = 0 + 1 = 2 + 1 = 3 + 2 = 5 + 3 = 8
*call array run through it until adds up each number til the number called
=end

fib_array = Array.new

def fibonacci(n)
  a = 0
  b = 1
  n.times do
    temp_i = a
    a = b
    b = temp_i + b
  end
  return a

end

100.times do |n|
  fib_array.push(fibonacci(n))

end

p fib_array








