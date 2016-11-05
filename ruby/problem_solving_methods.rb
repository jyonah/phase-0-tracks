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
