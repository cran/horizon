\name{horizonSearch}
\alias{horizonSearch}
\title{Horizon elevation angle from DEM RasterLayer
}
\description{
Computes the horizon elevation angle, within a maximum search distance, for a given azimith angle for each pixel in a digital elevation model raster object.
}
\usage{
horizonSearch(x, azimuth, maxDist = 1000, degrees = FALSE, 
              ll = TRUE, filename = "", blockSize = NULL)
}
\arguments{
  \item{x}{
RasterLayer object.
}
  \item{azimuth}{
numeric. Azimuth angle.
}
  \item{maxDist}{
integer. Maximum search distance in meters.
}
  \item{degrees}{
logical. If TRUE, input (azimuth) and output (horizon elevation) angles are in degrees; else in radian.
}
  \item{ll}{
logical. If TRUE, coordinates should be in degrees; else planar.
}
  \item{filename}{
character. Output raster filename. Optional.
}
  \item{blockSize}{
integer>0. Number of raster rows processed simultaneously. Default is the number of rows in the input raster divided by 10.
}
}
\details{
Azimuth is measured from North over East. 

The 'blockSize' parameter may be reduced to avoid memory errors when processing large input RasterLayer objects.
}
\value{
RasterLayer object
}
\seealso{
\code{\link{svf}}
}
\examples{
r <- getData('alt', country='ALB')

h <- horizonSearch(r, 60, degrees=TRUE, maxDist=2000, ll=TRUE)
}


