int_arr = [1,2,3,4,5,6,7]

def search_array (arr, integer)
  arr.each do |position|
    if arr[position] == integer
      return position
    elsif arr[position] == (arr.length - 1)
      return nil
    end #if
  end #do
end #search_array

p search_array(int_arr, 45)
