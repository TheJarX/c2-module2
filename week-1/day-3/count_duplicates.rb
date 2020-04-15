require 'set'
def count_duplicates(n)
    n.length - n.to_set.to_a.length 
end

