arr = [6, 3, 1, 8, 2, 5, 4, 7]

def merge_sort (arr)
  
# base case
  if arr.length == 0
    return 0
  end  

# recursive case
  merge_sort(arr.slice(0, arr.length / 2))
  puts arr.inspect
end  

merge_sort(arr)