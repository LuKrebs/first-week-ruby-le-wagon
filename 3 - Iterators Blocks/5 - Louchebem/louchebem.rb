def louchebemize(sentence)
  # TODO: implement your louchebem translator
  return sentence if sentence.length == 1
  sentence = sentence.strip.split(" ")
  sentence.map! do |letter|
    if letter.start_with?("a", "e", "i", "o", "u")
      letter = "l#{letter}#{random_sufixe}"
    else
      count = 0
      while count < letter.length
        if !letter.start_with?("a", "e", "i", "o", "u")
          letter = "#{letter[1,letter.length - 1]}#{letter[0]}"
        end
        count += 1
      end
      letter = "l#{letter}#{random_sufixe}"
    end
  end
  return sentence.join(" ")
end

def random_sufixe
  a = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  return a.sample
end



