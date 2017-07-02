def pmu_format!(race_array)
  # TODO: modify the given array so that it is PMU-consistent. This method should return nil.
  race_array.reverse!
  race_array.map!.with_index { |z, i| "#{race_array.length - i}-#{z}!" }
  race_array
end
