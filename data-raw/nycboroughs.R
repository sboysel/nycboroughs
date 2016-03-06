library(rgdal)
nycboroughs <- rgdal::readOGR(dsn = "data-raw/nycboroughs.geojson",
                              layer = "OGRGeoJSON")

save(nycboroughs, file = "data/nycboroughs.RData", compress = "xz")
