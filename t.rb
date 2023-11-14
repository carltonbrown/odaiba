things = []
things = 10.times.map do
  rand(36**8).to_s(36)  
end
puts things.join("\n")



