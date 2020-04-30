require "http"

def get_joke
  HTTP.headers(:accept => "text/plain").get("https://icanhazdadjoke.com/").to_s
end

p get_joke
