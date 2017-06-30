=begin
*declare method that takes parameters of first and last name
    def alias_manager(name)
*
=end

def alias_manager(first_name, last_name)

  name = last_name + " " + first_name

  vowels_hash = {
  'a' => 'e',
  'A' => 'E',
  'e' => 'i',
  'E' => 'I',
  'i' => 'o',
  'I' => 'O',
  'o' => 'u',
  'O' => 'U',
  'u' => 'a',
  'U' => 'A'
}

  name_array = name.split('').map do |character|
    vowels_hash[character] || character
  end
  name_array.join
end

alias_manager("Felicia", "Torres" )