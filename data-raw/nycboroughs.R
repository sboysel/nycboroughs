library(rgdal)
boroughs <- rgdal::readOGR(dsn = "data-raw/nycboroughs.geojson",
                           layer = "OGRGeoJSON")

save(boroughs, file = "data/nycboroughs.RData", compress = "xz")
