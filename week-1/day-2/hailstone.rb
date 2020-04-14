#Print the hailstone sequence starting at x and returns its length
def hailstone(x)
    counter = 0

    print "#{x}\s"

    while x > 1
        if x % 2 == 0
          x = x / 2
          print "#{x}\s"
          counter += 1
        else
          x = (x * 3) + 1
          print "#{x}\s"
          counter += 1
         end
    end
    
    return counter
end
