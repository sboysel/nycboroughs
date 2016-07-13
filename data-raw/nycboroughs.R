library(sp)
library(rgdal)

# Download from NYC OpenData
# https://data.cityofnewyork.us/City-Government/Borough-Boundaries/tqmj-j8zm
tmp <- tempfile(fileext = ".geojson")
download.file(url = "https://data.cityofnewyork.us/resource/6jcb-t2g6.geojson",
              destfile = tmp,
              method = "curl")
boroughs <- rgdal::readOGR(dsn = tmp,
                           layer = "OGRGeoJSON")
unlink(tmp)

# Only keep name
boroughs@data <- boroughs@data["boro_name"]
names(boroughs) <- "name"

# Change boroughs feature IDs
boroughs <- sp::spChFIDs(boroughs, as.character(boroughs$name))

# Save
save(boroughs, file = "data/nycboroughs.RData", compress = "xz")
