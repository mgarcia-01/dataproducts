##map
library(leaflet)
my_map <- leaflet() %>% 
  addTiles()
my_map


library(leaflet)
my_map <- my_map %>%
  addMarkers(lat=39.2980803, lng=-76.5898801, 
             popup="Jeff Leek's Office")
my_map



library(leaflet)
my_map <- my_map %>%
  addMarkers(lat=39.2980803, lng=-76.5898801, 
             popup="Jeff Leek's Office")
my_map




set.seed(2016-04-25)
df <- data.frame(lat = runif(20, min = 39.2, max = 39.3),
                 lng = runif(20, min = -76.6, max = -76.5))
df %>% 
  leaflet() %>%
  addTiles() %>%
  addMarkers()




df <- data.frame(lat = runif(500, min = 39.25, max = 39.35),
                 lng = runif(500, min = -76.65, max = -76.55))
df %>% 
  leaflet() %>%
  addTiles() %>%
  addMarkers(clusterOptions = markerClusterOptions())


hopkinsSites <- c(
  "<a href='http://www.jhsph.edu/'>East Baltimore Campus</a>",
  "<a href='https://apply.jhu.edu/visit/homewood/'>Homewood Campus</a>",
  "<a href='http://www.hopkinsmedicine.org/johns_hopkins_bayview/'>Bayview Medical Center</a>",
  "<a href='http://www.peabody.jhu.edu/'>Peabody Institute</a>",
  "<a href='http://carey.jhu.edu/'>Carey Business School</a>"
)

hopkinsLatLong %>% 
  leaflet() %>%
  addTiles() %>%
  addMarkers(icon = hopkinsIcon, popup = hopkinsSites)
