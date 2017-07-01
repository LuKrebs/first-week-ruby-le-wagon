def visa?(card)
  card.strip.start_with?("4")
end

def mastercard?(card)
  card.strip.start_with?("5")
end

def valid_card?(card)
  card = card.strip.delete(" ").split("").map { |number| number.to_i }
  card.map!.with_index { |x, i| i.odd? ? x : (x * 2) }
  card.map! { |number| number > 9 ? number - 9 : number }
  card.reduce(:+).to_s.end_with?("0")
end
