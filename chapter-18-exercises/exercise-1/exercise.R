# load relevant libraries
library("httr")
library("jsonlite")
setwd("C:/Users/Christopher/Desktop/R/book-exercises/chapter-18-exercises/exercise-1")

# Be sure and check the README.md for complete instructions!


# Use `source()` to load your API key variable from the `apikey.R` file you made.
# Make sure you've set your working directory!

source("apikey.R")
# Create a variable `movie_name` that is the name of a movie of your choice.
movie_name <- "Kingsmen"

# Construct an HTTP request to search for reviews for the given movie.
# The base URI is `https://api.nytimes.com/svc/movies/v2/`
# The resource is `reviews/search.json`
# See the interactive console for parameter details:
#   https://developer.nytimes.com/movie_reviews_v2.json
#
# You should use YOUR api key (as the `api-key` parameter)
# and your `movie_name` variable as the search query!


# Send the HTTP Request to download the data
# Extract the content and convert it from JSON
request <- GET(paste0("https://api.nytimes.com/svc/movies/v2/", "reviews/search.json"), query = list("query" = movie_name, "api_key" = tmdb_key))
request_text <- content(request, "text")
request_from_json <- fromJSON(request_text)

# What kind of data structure did this produce? A data frame? A list?
is.data.frame(request_from_json)
is.list(request_from_json)
#list

# Manually inspect the returned data and identify the content of interest 
# (which are the movie reviews).
# Use functions such as `names()`, `str()`, etc.
View(request_from_json)

# Flatten the movie reviews content into a data structure called `reviews`


# From the most recent review, store the headline, short summary, and link to
# the full article, each in their own variables


# Create a list of the three pieces of information from above. 
# Print out the list.
