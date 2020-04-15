def non_duplicated_values(values)
    values.select{ |v| values.count(v) == 1 }
end
