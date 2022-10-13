require 'pry-byebug'

def substrings(string, dictionary)
  result = Hash.new(0)

  dictionary.map do |substring|
    string.downcase.scan(substring) { |match| result[match] += 1 }
  end

  result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

p substrings('below', dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)
