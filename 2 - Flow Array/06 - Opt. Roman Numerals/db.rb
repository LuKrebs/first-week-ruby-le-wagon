DB = {
  1 => "I",
  5 => "V",
  10 => "X",
  50 => "L",
  100 => "C",
  500 => "D",
  1000 => "M"
}
DB_NEW = {
  "DCCCC" => "CM",
  "CCCC" => "CD",
  "LXXXX" => "XC",
  "XXXX" => "XL",
  "VIIII" => "IX",
  "IIII" => "IV"
}

def unidade(number)
  number < 5 ? "I" * number : "V" + ("I" * (number - 5))
end

def dezena(number)
  final_number = ""
  number = number.to_s.split("").map! { |x| x.to_i }
  number[0] < 5 ? final_number += "X" * number[0] : final_number += "L" + ("X" * (number[0] - 5))
  final_number += unidade(number[1])
  final_number
end

def centena(number)
  number = number.to_s.split("").map! { |x| x.to_i }
  number[0] < 5 ? final_number = "C" * number[0] : final_number = "D" + ("C" * (number[0] - 5))
  x = [number[1] * 10, number[2]].reduce(:+)
  return final_number if x.zero?
  x > 10 ? final_number += dezena(x) : final_number += unidade(x)

  final_number
end

def milhar(number)
  number = number.to_s.split("").map! { |x| x.to_i }
  final_number = "M" * number[0]
  x = [number[1] * 100, number[2] * 10, number[3]].reduce(:+)
  return final_number if x.zero?
  final_number += unidade(x) if x < 10
  final_number += dezena(x) if x.between?(10, 99)
  final_number += centena(x) if x > 99

  final_number
end
