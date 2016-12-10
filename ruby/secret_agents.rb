# 4.6 with John Donnelly & Christopher Huynh
#encrypt method
#method name - with string inputs
# index the string
# using the index, combine with the .next commmand to generate the encrypted string
# also check if there are any spaces in the string.  spaces remain untouched
# print newly encrypted results

#our method definitions

def encrypt(stringVar)
counter = 0
while counter < stringVar.length
	if stringVar[counter] == " "
		stringVar[counter] = stringVar[counter]
	elsif stringVar[counter] == "z"
		stringVar[counter] = "a"
	else stringVar[counter] = stringVar[counter].next
	end
counter += 1
end
puts stringVar
stringVar = stringVar.to_s #had to put this in for the swordfish to work properly
end


# decrypt method
# make a variable with entire alphabet = and index it
# use alpabet index to know what goes before another letter
# replace encrypted words with letter from before it

def decrypt(stringVar)
counter = 0
map ="abcdefghijklmnopqrstuvwxyz"
while counter < stringVar.length
	if stringVar[counter] == " "
		stringVar[counter] = stringVar[counter]
	else
		placement = map.index(stringVar[counter]) - 1  
		# we did not run into an edge case, we kind of lucked into it working properly. we looked at the code to see why it did not turn into an edge case. 
		# what we discovered was that because a was equal to 0, when it became -1, it read the index of the map from the back of the string, which is z.
		stringVar[counter] = map[placement]
	end
	counter += 1
end
puts stringVar
stringVar = stringVar.to_s #had to put this in for the swordfish to work properly
end
# encrypt("abc")
# decrypt("bcd") 
# decrypt(encrypt("swordfish"))

#why it works: it runs like order of operations in math, completeing all the commands within the most specifific parenthesies, and then took the output for that, and uses it for the decrypt method.

#get user to indicate if they wish to encrypt or decrypt a password
#ask user for a password
# use password in either encryption or decryption methods
# print out the encrypted password or the decrypted password

#our driver code

puts "would you like to encrypt or decrypt a password?"
pref = gets.chomp
puts "what is your password?"
password = gets.chomp

if pref == "encrypt"
	encrypt(password)

elsif pref == "decrypt"
	decrypt(password)
end