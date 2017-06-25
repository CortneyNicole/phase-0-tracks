=begin
*write a method for encrypt with a paramater of string
*make an alphabet string
*make counter and set to zero
*create a new string value to collect the encrypted string
*create loop
*create logic for edge case
* print new string
=end

puts "Please enter your code name."
code_name = gets.chomp
puts "Hello #{code_name}, would you like to encrypt or decrypt a password?"
action = gets.chomp
puts "What is the password"
password = gets.chom

def encrypt(password) 
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index =  0
  new_string = ""
  while index < password.length
    current_letter = password[index]
    alphabet_index = alphabet.index(current_letter)
    if current_letter == "z"
      new_string += "a"
    elsif current_letter == " "
      new_string += " "
    else
      new_string += password[indwx].next
    end
    index += 1
  end
  p new_string
end

#encrypt ("abc")
#encrypt ("zed")
#encrypt ("swordfish")

def decrypt(password)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index =  0
  decrypted_word = ""
  while index < password.length
   if password[index] == "z"
      decrypted_word += "a"
   elsif string[index] == " "
      decrypted_word += " "
   else 
      back_alpha_index = alphabet.index(password[index]) - 1 
      decrypted_word += alphabet[back_alpha_index]
   end
    index += 0
  end
  p decrypted_word
end

#decrypt ("bcd")
#decrypt ("afe")

#decrypt(encrypt("swordfish"))

if action == "encrypt" 
  encrypt(password)
else action == "decrypt"
  decrypt(password)
end

