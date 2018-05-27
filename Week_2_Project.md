New York City - Map
================
Michael Garcia
May 26, 2018

Map of New York City - Pfizer World Headquarters
------------------------------------------------

This map includes the marker pointing the location of Pfizer World Headquarters in New York City

``` r
library("leaflet")
library("lattice")

pfe_lat <- 40.7503024
pfe_lng <- -73.9726573


pfe_map <- leaflet() %>% 
  addTiles()

pfe_map <- pfe_map %>%
  addMarkers(lat=pfe_lat, lng=pfe_lng, 
             popup="Pfizer World Headquarters"
             )
pfe_map
```

![](Week_2_Project_files/figure-markdown_github/openmaps_map-1.png)
