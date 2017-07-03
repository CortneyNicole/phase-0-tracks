=begin
* create method that takes first and last name arguement
* creat step in method that combines first and last and swaps it
* add hash that rotates vowels to next vowels and consonants to next consonants
* make sure hash has capitols
* create array that will store letters of name
* create method that seperates letter
* write loop that iterate through array and changes letters
* combine array to make code name
* create new hash to store namew
* create user interface
* loop through interface
=end


#creates function that takes first and last name as argument and swaps them.

def make_alias(first_name, last_name)

  name = last_name + " " + first_name

# hash for alphabet
# bcdfghjklmnpqrstvwxyz
# aeiou

  alphabet_hash = {
  'a' => 'e',
  'A' => 'E',
  'e' => 'i',
  'E' => 'I',
  'i' => 'o',
  'I' => 'O',
  'o' => 'u',
  'O' => 'U',
  'u' => 'a',
  'U' => 'A',
  'b' => 'c',
  'B' => 'C',
  'c' => 'd',
  'C' => 'D',
  'd' => 'f',
  'D' => 'F',
  'f' => 'g',
  'F' => 'G',
  'g' => 'h',
  'G' => 'H',
  'h' => 'j',
  'H' => 'J',
  'j' => 'k',
  'J' => 'K',
  'k' => 'l',
  'K' => 'L',
  'l' => 'm',
  'L' => 'M',
  'm' => 'n',
  'M' => 'N',
  'n' => 'p',
  'N' => 'P',
  'p' => 'q',
  'P' => 'Q',
  'q' => 'r',
  'Q' => 'R',
  'r' => 's',
  'R' => 'S',
  's' => 't',
  'S' => 'T',
  't' => 'v',
  'T' => 'V',
  'v' => 'w',
  'V' => 'W',
  'w' => 'x',
  'W' => 'X',
  'x' => 'y',
  'X' => 'Y',
  'y' => 'z',
  'Y' => 'Z'
}
#split name into array and iterates through array and alphabet hash changing vowels to next vowels and  consonant

name_array = name.split('').map do |character|
    alphabet_hash[character] || character
  end

  # joins name array into string

  return name_array.join
end

#creates a hash to store names and alias

code_names = Hash.new

#user interface loop. loops through input names until quit is entered and exits loop

while true
  puts "Please enter a first name. "
  first_name =gets.chomp
  if (first_name == "quit") then break end
  puts "Please enter a last name."
  last_name = gets.chomp
  if (last_name == "quit") then break end
  full_name = first_name + " " + last_name
  code_names[full_name]= make_alias(first_name, last_name)
end

code_names.each {|spy_name, spy_alias| p "#{spy_alias} is actually #{spy_name}."}















