# nycboroughs

[![Travis-CI Build Status](https://travis-ci.org/sboysel/nycboroughs.svg?branch=master)](https://travis-ci.org/sboysel/nycboroughs)

This package contains sample spatial data for the five boroughs of New York City as a
`SpatialPolygonsDataFrame`.

## Usage
Install
```{r}
devtools::install_github("sboysel/nycboroughs")
library(nycboroughs)
```
Call the `boroughs` object directly
```{r}
summary(boroughs)
plot(boroughs)
```
You can also [preview the source data](https://github.com/sboysel/nycboroughs/blob/master/data-raw/nycboroughs.geojson) using GitHub's GeoJSON rendering feature.

## Data Source
New York City Department of City Planning via [NYC OpenData](https://data.cityofnewyork.us/City-Government/Borough-Boundaries/tqmj-j8zm)

## See Also

* [sboysel/nyccollisions](https://github.com/sboysel/nyccollisions)
