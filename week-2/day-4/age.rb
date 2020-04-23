require 'time'
require 'date'
def age?(year, month,day)
  birthday = Date.parse("#{year}/#{month}/#{day}").to_s.split("-").join.to_i
  today = Time.new.strftime("%Y-%m-%d").split("-").join.to_i
    
  (today - birthday) / 10000
end
