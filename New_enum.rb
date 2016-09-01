# h = {
#   first_key: "first_value",
#   second_key: "second_value",
#   elephant: "hotdog"
# }
#
# h.each do |key, value|
#   puts "The key is #{key} and the value is #{value}."
# end


# ~/C5/sandbox/enum-hash.rb
scores = {
  jeremy: [10, 20, 34, 55, 86],
  been:   [11, 27, 95, 45, 33],
  raquel: [15, 54, 23, 22, 57],
  rosa:   [5, 3, 7, 77, 34]
}

high_scores = []

scores.each do |name, scores|
  high_scores << {name => scores.max}
end

puts high_scores.max_by {|person_and_score| person_and_score.values}

# Who has the single highest score (and what is that score)?

scores = {
  jeremy: [10, 20, 34, 55, 86],
  been:   [11, 27, 95, 45, 33],
  raquel: [15, 54, 23, 22, 57],
  rosa:   [5, 3, 7, 77, 34]
}

average_scores = []

scores.each do |name, scores|
  average = scores.inject{|sum, score| sum + score}.to_f / scores.size
  average_scores << {name => average}
end

puts average_scores.max_by {|person_and_average| person_and_average.values}


# Who has the highest *average* score (and what is that average)?
# Average is the sum of scores divided by the number of scores

# Who has the biggest difference between their highest and lowest score (and what is that difference)?

scores = {
  jeremy: [10, 20, 34, 55, 86],
  been:   [11, 27, 95, 45, 33],
  raquel: [15, 54, 23, 22, 57],
  rosa:   [5, 3, 7, 77, 34]
}

differences = []

scores.each do |name, scores|
  minimum = scores.min
  maximum = scores.max
  difference = maximum - minimum
  differences << {name => difference}
end

puts differences.max_by {|person_and_difference| person_and_difference.values}
