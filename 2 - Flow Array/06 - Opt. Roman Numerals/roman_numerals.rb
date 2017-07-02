require_relative './db.rb'

def old_roman_numeral(an_integer)
  return DB[an_integer] unless DB[an_integer].nil?
  length_of_an_integer = an_integer.to_s.length
  return unidade(an_integer) if length_of_an_integer == 1
  return dezena(an_integer) if length_of_an_integer == 2
  return centena(an_integer) if length_of_an_integer == 3
  return milhar(an_integer) if length_of_an_integer == 4
end

def new_roman_numeral(an_integer)
  new_array = []
  x = old_roman_numeral(an_integer)
  DB_NEW.each do |key, value|
    x = x.gsub(key, value) if x.include?(key)
  end
  x
end
