def alias_manager(first_name, last_name)

  name = last_name + " " + first_name

#bcdfghjklmnpqrstvwxyz
#aeiou
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

  name_array = name.split('').map do |character|
    alphabet_hash[character] || character
  end
  name_array.join
end

alias_manager("Felicia", "Torres" )