def who_is_online(friends)
  users = {}
  
  friends.each do |friend|
    if friend["status"] == "offline"
        if users.key?("offline")
            users["offline"] << friend["username"] 
        else 
            users["offline"] = [friend["username"]]
        end
    elsif friend["status"] == "online" && friend["last_activity"] <= 10
        if users.key?("online") 
            users["online"] << friend["username"] 
        else 
            users["online"] = [friend["username"]]
        end
    else
        if users.key?("away")
            users["away"] << friend["username"] 
        else 
            users["away"] = [friend["username"]]
        end
    end
    
  end 
  
  users
end 
