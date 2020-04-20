def my_languages(results)
  results.sort_by { |k, v| -v }.map { |k, v| k if v >= 60 }.compact
end
