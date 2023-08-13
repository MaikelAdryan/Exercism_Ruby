# https://exercism.org/tracks/ruby/exercises/locomotive-engineer
# Locomotive Engineer

class LocomotiveEngineer
  def self.generate_list_of_wagons(*ids) = ids

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    combined_list_of_wagons = []
    first, second, third, *rest = each_wagons_id
    combined_list_of_wagons << third
    combined_list_of_wagons.concat(missing_wagons, rest)
    combined_list_of_wagons << first
    combined_list_of_wagons << second
  end

  def self.add_missing_stops(route, stops = [])
    all_stops = []
    stops.each{|key, value|
      all_stops << value
    }
    stops = {:stops => all_stops}
    return {**route, **stops}
  end
  
  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information} 
  end
end
