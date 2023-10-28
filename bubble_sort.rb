#implement bubble sort in Ruby without using #sort

def bubble_sort(data)
    n = data.length
  
    loop do
      sorted = true
  
      (n - 1).times do |i|
        if data[i] > data[i + 1]
          data[i], data[i + 1] = data[i + 1], data[i]
          sorted = false
        end
      end
  
      break if sorted
    end
  
    data
  end
  
default_array = [10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9]
puts "Enter numbers to sort seperated by spaces"
array = gets.chomp.split
  if array.length < 2
    puts "Not enough data, using default dataset #{default_array.join(' ')}"
    array = default_array
  end
p bubble_sort(array)