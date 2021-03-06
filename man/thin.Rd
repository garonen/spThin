% Generated by roxygen2 (4.0.2): do not edit by hand
\name{thin}
\alias{thin}
\title{Spatially thin species occurence data}
\usage{
thin(loc.data, lat.col = "LAT", long.col = "LONG", spec.col = "SPEC",
  thin.par, reps, locs.thinned.list.return = FALSE, write.files = TRUE,
  max.files = 5, out.dir, out.base = "thinned_data",
  write.log.file = TRUE, log.file = "spatial_thin_log.txt",
  verbose = TRUE)
}
\arguments{
\item{loc.data}{A data.frame of occurence locations. It can include several
columns, but must include at minimum a column of latitude and a
column of longitude values}

\item{lat.col}{Name of column of latitude values. Caps sensitive.}

\item{long.col}{Name of column of longitude values. Caps sensitive.}

\item{spec.col}{Name of column of species name. Caps sensitive.}

\item{thin.par}{Thinning parameter - the distance (in kilometers) that you want
records to be separated by.}

\item{reps}{The number of times to repeate the thinning process. Given the random
process of removing nearest-neighbors there should be 'rep' number of different
sets of coordinates.}

\item{locs.thinned.list.return}{TRUE/FALSE - If true, the `list` of
the data.frame of thinned locs resulting from each replication
is returned (see Returns below).}

\item{write.files}{TRUE/FALSE - If true, new *.csv files will be
written with the thinned locs data}

\item{max.files}{The maximum number of *csv files to be written based on the
thinned data}

\item{out.dir}{Directory to write new *csv files to}

\item{out.base}{A file basename to give to the thinned datasets created}

\item{write.log.file}{TRUE/FALSE create/append log file of thinning run}

\item{log.file}{Text log file}

\item{verbose}{TRUE/FALSE - If true, running details of the function are print at the console.}
}
\value{
locs.thinned.dfs A list of data.frames, each data.frame
  the spatially thinned locations of the algorithm for a
  single replication. This list will have `reps` elements.
}
\description{
\code{thin} returns spatially thinned species occurence data sets.
A randomizaiton algorithm (\code{\link{thin.algorithm}}) is used to create
data set in which all occurnece locations are at least \code{thin.par}
distance apart. Spatial thinning helps to reduce the effect of uneven,
or biased, species occurence collections on spatial model outcomes.
}
\seealso{
\code{\link{thin.algorithm}}
}

