=begin
* create array
*write method that goes through the array and find the called number
*return the index

=end


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








