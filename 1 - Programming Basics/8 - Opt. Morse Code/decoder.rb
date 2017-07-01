require_relative './db.rb'

def decode(morse_text)
  # TODO: Decode the morse text you just got!
  h = DB.invert
  human_phrase = ""
  morse_text.gsub("|", " | ").split(" ").each do |morse|
    human_phrase += h[morse]
  end
  human_phrase.upcase
end
