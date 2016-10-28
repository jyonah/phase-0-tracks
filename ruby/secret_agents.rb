puts "enter your password"

pass = gets.chomp

def encrypt(password)
	x = 0
	while x < password.length
		password[x] = password[x].next
		x += 1
	end #while
end #encrypt

encrypt(pass)
puts pass
