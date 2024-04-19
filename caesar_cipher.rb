require 'pry-byebug'
def caesar_cipher(string, shift_factor)
  #shifts each letter in string a number of places down the alphabet equal to shift_factor. For example,
  #caesar_cipher("caesar", 2) should return "ecguct"
  alphabet_downcase = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  alphabet_upcase = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  letters = string.split('')
  letters.map! do |letter|
    if alphabet_downcase.include?(letter.downcase)
      if letter == letter.downcase
        letter_index = alphabet_downcase.find_index(letter)
        shift_check = letter_index + shift_factor
        shift_check -= 26 if shift_check > 26
        letter = alphabet_downcase[shift_check]
      else
        letter_index = alphabet_upcase.find_index(letter)
        shift_check = letter_index + shift_factor
        shift_check -= 26 if shift_check > 26
        letter = alphabet_upcase[shift_check]
      end
    else
      letter
    end
  end
  #binding.pry
  letters.join
end

puts caesar_cipher("What about a whole sentence?", 5)
