#Encrypt Psudocode
#input: string through the user interface
#output: string, "encrypted"
#Steps:
# 1. collect input, a string.
puts "enter your password"
pass = gets.chomp

# 2. A method that takes a string as it's argument.
def encrypt(password)
  # 3. iterate through the string
	x = 0
	while x < password.length
    # 4. change each character to the next character in the alphabet.
		password[x] = password[x].next
		x += 1
	end #while
end #encrypt

# 5. return the changed/encrypted string
encrypt(pass)
puts pass

#Decrypt Pseudocode
#input: ecrypted string
#output: the string "decrypted"
#Steps:
# 1. a method that takes one string as it's argument.
def decrypt(y)
  # 2. define the alphabet as a string
  abc = "abcdefghijklmnopqrstuvwxyz"
  # 3. iterate through the encrypted string
  i = 0
  while i < y.length
    # 4. for each character find the index in the abc string
    whereabc = abc.index(y[i])
    # 5. returen the character at the index-1 in the abc string
    y[i] = abc[whereabc-1]
    i += 1
  end #while
  # 6. return the decrypted string
end #method

decrypt(pass)
puts pass
