def search_array (arr, integer)
  arr.each do |position|
    if arr[position] == integer
      return position
    elsif arr[position] == (arr.length - 1)
      return nil
    end #if
  end #do
end #search_array

int_arr = [1,2,3,4,5,6,7]
p search_array(int_arr, 45)

def fib(fib_term)
	fib_array = [0,1]
	fib_term = fib_term - 2
	fib_term.times do |num|
		new_fibs = fib_array[-1] + fib_array[-2]
		fib_array << new_fibs
	end
	fib_array
end

p fib(100)
array = fib(100)
p array[99] == 218922995834555169026


def sort(initial_arr)
  sorted_array = []
  initial_arr.each_with_index do |value, idx|
  	if idx == 0
  		sorted_array << value
  	else
  		sorted_array.each_with_index do |sorted_value, sorted_idx|
	  		if value <= sorted_value
  				sorted_array.insert(sorted_idx, value)
  				break
  			elsif sorted_idx == sorted_array.length - 1
  				sorted_array << value
  				break
  			end #if value
  		end #sorted_array itterating
  	end # if idx
  	p sorted_array
  end #initial_arr.each_with_index
  sorted_array
end #sort
