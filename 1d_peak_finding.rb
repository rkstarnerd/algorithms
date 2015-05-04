array = [1, 2, 3, 4, 5, 6, 7, 8, 9].shuffle
print array 

def count_peaks(array)
  last_index = array.size - 1
  peak_count = 0
  
  peak_count += 1 if array[0] >= array[1]

  array.each_index do |index|
    if index != 0 && index != last_index
      peak_count += 1 if (array[index] >= array[index-1]) && (array[index] >= array[index+1])
    end
  end

  peak_count +=1 if array[last_index] >= array[last_index-1]

  puts "\n This array has #{peak_count} peak(s)."
  return peak_count
end

count_peaks(array)

# Any array will always have a peak if the condition is greater than or equal to because if a value at an index is less than the value to the left or right of it, you would eventually get to the first or last index which would then be the peak.

# Linear search: Worst case complexity is O(n) because in the worst case you'd have to look at all n elements.

def first_peak(array)
  last_index = array.size-1

  array.each_index do |index|
    if index == 0 && (array[index] >= array[index+1])
      puts "\nThe first peak was found at at the first index."
      break
    elsif (index != 0) && (index != last_index) && (array[index] >= array[index-1]) && (array[index] >= array[index+1])
      puts "\nThe first peak was found at index #{index}." 
      break
    elsif (index == last_index) && (array[last_index] >= array[last_index-1])
      puts "\nThe first peak was found at the last index."
      break
    end
  end
end

first_peak(array)

# Divide and conquer
# Binary search: T(n)
# Base case: T(1) = O(1)
# O(log2n)

def find_any_peak(array)
  n = array.size

  if (!array[(n/2)-1].nil?) && array[n/2] < array[(n/2)-1]
    find_any_peak(array[0..(n/2)-1])
  elsif (!array[(n/2)+1].nil?) && array[n/2] < array[(n/2)+1] 
    find_any_peak(array[((n/2)+1)..n])
  else
    puts "\n#{array[n/2]} is a peak."
  end
end

find_any_peak(array)