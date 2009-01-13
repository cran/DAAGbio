\name{coralTargets}
\alias{coralTargets}
\docType{data}
\title{Targets file to accompany spotted expression array data}
\description{
  Targets file, in the form expected by limma, to accompany the
  expression array data in \code{coralRg}
}
\usage{data(coralTargets)}
\format{
  A data frame with 6 observations on the following 4 variables.
  \describe{
    \item{\code{SlideNumber}}{a character vector}
    \item{\code{FileName}}{Names of files that hold spotted array data}
    \item{\code{Cy3}}{Treatment assigned to Cy3 ("red")}
    \item{\code{Cy5}}{Treatment assigned to Cy5 ("green")}
  }
}
\examples{
data(coralTargets)
## maybe str(coralTargets) ; plot(coralTargets) ...
}
\keyword{datasets}
