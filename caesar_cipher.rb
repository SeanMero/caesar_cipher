require 'pry-byebug'
def caesar_cipher(string, shift_factor)
  #shifts each letter in string a number of places down the alphabet equal to shift_factor. For example,
  #caesar_cipher("caesar", 2) should return "ecguct"
  alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  letters = string.split('')
  letters.map! do |letter|
    letter_index = alphabet.find_index(letter)
    letter = alphabet[letter_index + shift_factor]
  end
  binding.pry
  letters.join
end

puts caesar_cipher("caesar", 2)
