# sub_strings.rb

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i",
              "low", "own", "part", "partner", "sit"]

input_string = "Howdy partner, sit down! How's it going?"

def substrings(string, substring)
  result = {}
  string = string.downcase
  substring.each do |sub|
    el = string.scan(sub).length
    result[sub] = el if el.positive?
  end
  result
end

p substrings(input_string, dictionary)
