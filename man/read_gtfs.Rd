% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_gtfs.R
\name{read_gtfs}
\alias{read_gtfs}
\title{Read and validate GTFS files}
\usage{
read_gtfs(path, files = NULL, quiet = TRUE, warnings = TRUE)
}
\arguments{
\item{path}{The path to a GTFS \code{.zip} file.}

\item{files}{A character vector containing the text files to be read from the
GTFS (without the \code{.txt} extension). If \code{NULL} (the default) all
existing files are read.}

\item{quiet}{Whether to hide log messages and progress bars (defaults to TRUE).}

\item{warnings}{Whether to display warning messages (defaults to TRUE).}
}
\value{
A GTFS object: a list of data.tables in which each index represents a
  GTFS text file.
}
\description{
Reads GTFS text files from either a local \code{.zip} file or an URL and
validates them against GTFS specifications.
}
\examples{
data_path <- system.file("extdata/spo_gtfs.zip", package = "gtfstools")

gtfs <- read_gtfs(data_path)
names(gtfs)

gtfs <- read_gtfs(data_path, files = c("trips", "stop_times"))
names(gtfs)

}
\seealso{
\code{\link{validate_gtfs}}
}
