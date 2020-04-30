require "http"
require "json"
require "terminal-table"

API_KEY = "YOUR_API_KEY"
API_URL = "https://api.themoviedb.org/3/movie/popular"

def get_movies(url, page = 1)
  JSON.parse(HTTP.get(url, :params => { :api_key => API_KEY, :page => page }))["results"]
end

def show(data)
  res = []
  data.each do |movie|
    title = movie["title"]
    title = title[0..17] << "..." if title.length > 20
    release = movie["release_date"]
    overview = movie["overview"][0..87] << "..."

    res << [title, release, overview]
  end
  puts Terminal::Table.new :headings => ["Title", "Release date", "Overview"], :rows => res
end

show(get_movies(API_URL))
