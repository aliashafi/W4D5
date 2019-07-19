require "byebug"
# my_min
# Given a list of integers find the smallest number in the list.

# Example:
#     

def my_min(arr)
  min = arr.first
  (0...arr.length).each do |idx1|
    (idx1...arr.length).each do |idx2|
      if (idx2 != idx1) && (arr[idx1] < arr[idx2]) && (arr[idx1] < min)
        min = arr[idx1]
      end

    end
  end
  min

end

def my_min(arr)
  min = arr.first
  (1...arr.length).each do |idx|
    min = arr[idx] if arr[idx] < min
  end
  min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5


##largest contiguous sub-sum
# def largest_contiguous_subsum(list)
#   sub_arr = []
#   (0...list.length).each do |idx1|
#     (0...list.length).each do |idx2|
#       if idx2 > idx1
#         sub_arr << list[idx1..idx2]
#       end
#     end
#   end

#   max_sum = sub_arr[0].sum

#   (1...sub_arr.length).each do |idx|
#     max_sum = sub_arr[idx].sum if max_sum < sub_arr[idx].sum
#   end

#   max_sum
# end

def largest_contiguous_subsum(list)
  curr_sum = list[0]
  max_sum = list[0]
  (1...list.length).each do |idx|
    # debugger
    curr_sum += list[idx]
    if curr_sum < list[idx] 
      curr_sum = list[idx]
    end
    if curr_sum > max_sum
      max_sum = curr_sum
    end
  end
  max_sum
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])