def rgb_detector(sample)
   count = 0
   
   sample.each do |col|
       col.each do |row|
           factor = row[0] / 4
           count += 1 if row[0] > 100 && (row[1] < factor && row[2] < factor)
       end
   end
    count
end
