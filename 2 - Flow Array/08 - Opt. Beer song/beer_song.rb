require_relative 'db.rb'
def beer_song
  x = ARGV.inspect.delete("/[],/").delete('"').split(" ").join.to_i
  while x > 2
    puts "#{x} bottles of beer on the wall, #{x} bottles of beer!"
    puts "Take one down, pass it around, #{x - 1} bottles of beer on the wall!"
    x -= 1
  end
  puts DB[3] if x >= 2
  puts DB[4] if x >= 2
  puts DB[1] if x >= 1
  puts DB[2] if x >= 1
end
beer_song
