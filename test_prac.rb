def jumpingOnClouds(c)
  index = 0
  jump_count = 0
  
  while index < (c.count - 1)
    jump_index = c[index + 2] == 0 ? 2 : 1
    index += jump_index
    jump_count += 1
  end
  
  return jump_count
end

jumpingOnClouds([0,0,0,0,1,0])