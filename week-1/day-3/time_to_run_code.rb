def exec_time(proc)
  bef = Time.now
  proc.call
  aft = Time.now
  
  aft - bef
end
