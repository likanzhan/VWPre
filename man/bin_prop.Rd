% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculations.R
\name{bin_prop}
\alias{bin_prop}
\title{Bins the sample data and calculates proportion looks by interest area}
\usage{
bin_prop(data, NoIA = NULL, BinSize = NULL, SamplingRate = NULL)
}
\arguments{
\item{data}{A data table object output by \code{\link{select_recorded_eye}}
or \code{\link{check_samplingrate}}.}

\item{NoIA}{A positive integer indicating the number of interest areas defined 
when creating the study.}

\item{BinSize}{A positive integer indicating the size of the binning window 
(in milliseconds).}

\item{SamplingRate}{A positive integer indicating the sampling rate (in Hertz) 
used to record the gaze data, which can be determined with the function 
\code{\link{check_samplingrate}}.}
}
\value{
A data table with additional columns (the number of which depends on 
the number of interest areas specified) added to \code{data}.
}
\description{
\code{bin_prop} calculates the proportion of looks (samples) to each 
interest area in a particular window of time (bin size). This function first
checks to see if the procedure is possible given the sampling rate and 
desired bin size. It then performs the calculation and downsampling, returning
new columns corresponding to each interest area ID (e.g., 'IA_1_C', 'IA_1_P').
The extention '_C' indicates the count of samples in the bin and the 
extension '_P' indicates the proportion. N.B.: This function will work for 
data with a maximum of 8 interest areas.
}
\examples{
\dontrun{
library(VWPre)
# Bin samples and calculation proportions...
df <- bin_prop(dat, NoIA = 4, BinSize = 20, SamplingRate = 1000)
}
}
