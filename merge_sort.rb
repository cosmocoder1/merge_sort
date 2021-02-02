arr = [6, 3, 1, 8, 2, 5, 4, 7]
$left_child = []
$right_child = []

def format_arr (arr)
  puts arr.inspect
  #puts merge(arr[0], arr[1])

end  

=begin
def merge (arr1, arr2)
  result_arr = []
  arr2[1] < arr1[0] ? result_arr.push(arr2[1], arr1[0]) : sorted_left.push(arr1[0], arr2[1])
  return result_arr
end  
=end

def sort (arr)
  if left_channel.length == 0 || right_channel.length == 0
    return 0
  end 

  left_channel = arr
  right_channel = arr

  sort(left_channel.slice(0, left_channel.length / 2))
  $left_child.push(left_channel)
  $right_child.push(right_channel.slice(right_channel.length / 2, right_channel.length - 1))
  

end 


sort(arr)
puts $left_child.inspect
puts $right_child.inspect
#format_arr($sorted_arr)