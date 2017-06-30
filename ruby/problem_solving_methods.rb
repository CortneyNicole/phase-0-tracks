=begin
* create array
*write method that goes through the array and find the called number
*return the index

=end

*release 0
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

#release 1
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

#release 2

s# bubble sort

# for each index in the array, the item will compare to see
# if it is less or greater than the value and continue
# on until the elements in the array have been sorted

array = [1,4,7,9,4,3,5,7]

def bubble_sort(array)
  number = array.length

  loop do

    sorted = false
    # while this array is NOT sorted

    (number-1).times do |i|
        # starting from the 2nd index, it will compare to the first index
        # if the element is greater than the next element
        if array[i] > array[i+1]

          # then we want to switch the two elements in the array index
          array[i], array[i+1] = array[i+1], array[i]

          # it will continue to swap the element until reaches the
          # end of the array or its proper place
          sorted = true
        end
    end

    break if not sorted
      # break after the array has been sorted
  end

  # output the sorted array
  array
end

bubble_sort(array)





