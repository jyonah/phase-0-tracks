#Encrypt Psudocode
#input: string through the user interface
#output: string, "encrypted"
#Steps:
# 1. collect input, a string.

# 2. A method that takes a string as it's argument.
def encrypt(input)
  abc = "abcdefghijklmnopqrstuvwxyz"
  # 3. iterate through the string
	x = 0
	while x < input.length
    whereabc = abc.index(input[x])
    # 4. change each character to the next character in the alphabet.
    	if whereabc == 25
    		whereabc = -1
    	end #if
		input[x] = abc[whereabc + 1]
		x += 1
	end #while
  input
end #encrypt

# 5. return the changed/encrypted string


#Decrypt Pseudocode
#input: ecrypted string
#output: the string "decrypted"
#Steps:
# 1. a method that takes one string as it's argument.
def decrypt(input)
  # 2. define the alphabet as a string
  abc = "abcdefghijklmnopqrstuvwxyz"
  # 3. iterate through the encrypted string
  i = 0
  while i < input.length
    # 4. for each character find the index in the abc string
    whereabc = abc.index(input[i])
    # 5. returen the character at the index-1 in the abc string
    input[i] = abc[whereabc - 1]
    i += 1
  end #while
  # 6. return the decrypted string
  input
end #method


def whatdo
  p "Would you like to encrypt(e) or decrypt(d) a password?"
  which = gets.chomp
  if which == "e"
    p "What is the password you would like encrypted?"
    user_input = gets.chomp
    encrypt(user_input)
  elsif which == "d"
    p "What is the password you would like decrypted?"
    user_input = gets.chomp
    decrypt(user_input)
  else
    p "Sorry that input is not understood. Please use 'e' for encrypt and 'd' for decrypt."
    whatdo
  end #if
end #whatdo

#run the "whatdo" interface function.
whatdo

# OUR DRIVER CODE

#encrypt a few passwords
first = "abc"
encrypt(first) #should return "bcd"
puts first

second = "zed"
encrypt(second) #should return "afe"
puts second

#decypt some.
third = "bcd"
decrypt(third) #should return "abc"
puts third

fourth = "afe"
decrypt(fourth) #should return "zed"
puts fourth

#Try a nested method call!
seafood = "swordfish"
decrypt(encrypt(seafood))
puts seafood
# This nested method call first encrypts swordfish, then decrypts it, and returns the decrypted value "swordfish."
