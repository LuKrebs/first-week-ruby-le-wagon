# Very dirty code to make some dirty gym...
def hop_hop_hop(number_of_exercises)
  (1..number_of_exercises).each do |i|
    counter = 0
    until counter == i
      print "hop! "
      counter += 1
    end
    print "One more time..\n" unless counter != i
  end
end

hop_hop_hop(6)
