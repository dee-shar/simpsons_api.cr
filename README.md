# simpsons_api.cr
Web-API for [thesimpsonsapi.com](https://thesimpsonsapi.com) the RESTful API for The Simpsons universe. Access data about characters, episodes, and locations from Springfield.

## Example
```cr
require "./simpsons_api"

simpsons_api = SimpsonsApi.new
characters = simpsons_api.get_characters()
puts characters
```
