=begin
*write a method for encrypt with a paramater of string
*make an alphabet string
*make counter and set to zero
*create a new string value to collect the encrypted string
*create loop
*create logic for edge case
* print new string
=end


def encrypt(string) 
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index =  0
  new_string = ""
  while index < string.length
    current_letter = string[index]
    alphabet_index = alphabet.index(current_letter)
    if current_letter == "z"
      new_string += "a"
    elsif current_letter == " "
      new_string += " "
    else
      new_string += string[indwx].next
    end
    index += 1
  end
  p new_string
end

encrypt ("abc")
encrypt ("zed")
encrypt ('swordfish")

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index =  0
  decrypted_word = ""
  while index < string.length
   if string[index] == "z"
      decrypted_word += "a"
   elsif string[index] == " "
      decrypted_word += " "
   else 
      back_alpha_index = alphabet.index(string[index]) - 1 
      decrypted_word += alphabet[back_alpha_index]
   end
    index += 0
  end
  p decrypted_word
end

decrypt ("bcd")
decrypt ("afe")




end
