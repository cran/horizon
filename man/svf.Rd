\name{svf}
\alias{svf}
\title{
Sky view factor from DEM RasterLayer
}
\description{
Computes the sky view factor (fraction of sky not obstructed by terrain within a hemisphere), within a maximum search distance, for each pixel in a digital elevation model raster object.
}
\usage{
svf(x, nAngles = 16, maxDist = 1000, ll = TRUE,
    filename = "", blockSize = NULL, verbose = TRUE)
}
\arguments{
  \item{x}{
RasterLayer object
}
  \item{nAngles}{
integer. Discrete number of angles used to calculate sky view factor.
}
  \item{maxDist}{
integer. Maximum search distance in meters.
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
  \item{verbose}{
logical. If TRUE, progress messages are displayed.
}
}
\details{
The sky view factor is estimated by calculating and averaging the horizon elevation angle and sky view factor for a discrete number of azimuth angles. Increasing this discreet number of angles 'nAngles' will provide a better estimate of the actual sky view factor, at the expense of longer processing time.

The 'maxDist' parameter determines the maximum search radius for determining the horizon angle. Increasing the value of 'maxDist' will provide a better estimate of the actual sky view factor, at the expense of longer processing time.

The 'blockSize' parameter may be reduced to avoid memory errors when processing large input RasterLayer objects.
}
\value{
RasterLayer object. Values between 0 and 1.
}
\seealso{
\code{\link{horizonSearch}}
}
\examples{
r <- getData('alt', country='ALB')

s <- svf(r, nAngles=8, maxDist=500, ll=TRUE)
}