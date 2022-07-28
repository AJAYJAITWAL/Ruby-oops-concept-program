def compare_triplets(a_points, b_points)
  a_score = 0
  b_score = 0
  a_points.zip(b_points).each do |a_point, b_point|
    a_score+= 1 if a_point.to_i > b_point.to_i
    b_score+= 1 if b_point.to_i > a_point.to_i
  end
  puts "#{a_score} #{b_score}"
end

compare_triplets([5,6,7], [3,6,10])