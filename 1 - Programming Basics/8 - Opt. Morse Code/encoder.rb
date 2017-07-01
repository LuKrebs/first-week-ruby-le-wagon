require_relative './db.rb'

def encode(text)
  morse_phrase = ""
  text.downcase.split("").each_with_index do |letter, i|
    next if letter == ","
    if ("a".."z").to_a.include?(text[i + 1]) && DB[letter] != "|"
      morse_phrase += DB[letter] + " "
    else
      morse_phrase += DB[letter]
    end
  end
  morse_phrase
end
