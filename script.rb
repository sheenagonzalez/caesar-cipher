# Takes in a string and the shift factor and then outputs the modified string using a right shift
def caesar_cipher(string, shift_factor)
  alphabet = ('a' .. 'z').to_a
  string.split('').map do |char|
    current_key = alphabet.find_index(char.downcase)
    if (current_key) then
      new_key = (current_key + shift_factor) % alphabet.length
      new_char = alphabet[new_key]
      is_upcase = (char.upcase == char)
      is_upcase ? new_char.upcase : new_char
    else
      char
    end
  end.join('')
end