# caesar_cipher.rb

# get data from user
puts "Caesar Cipher"
puts "Write something to crypt:"
user_string = gets.chomp

puts "\nChoose the shift value (a number):"
user_factor = gets.chomp.to_i

# convert user string into ascii code
def string_to_ascii(string)
  string.chars.map { |char| char.ord }
end

# add shift factor to ascii and check value, if it isn't a letter shift and
# wrap to the correct value otherwise return the corresponding value
def shift_string(string, shift_factor)
  string_to_ascii(string).map do |char|
    new_char = char + shift_factor
    if (92..96).include?(new_char) || (123..126).include?(new_char)
      new_char - 26
    elsif char < 65
      char
    else
      new_char
    end
  end
end

# convert ascii code to the crypted string
def ascii_to_string(string, shift_factor)
  shift_string(string, shift_factor).map { |char| char.chr }.join("")
end

# print the result
puts "\nThe crypted value is:"
puts ascii_to_string(user_string, user_factor)
