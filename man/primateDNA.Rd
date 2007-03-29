\name{primateDNA}
\alias{primateDNA}
\docType{data}
\title{Mitochondrial DNA sequence data from 14 primates}
\description{
  Bases at 232 mitochondrial locations (not continuous), for each of
  14 primates.  
}
\usage{data(primateDNA)}
\format{
  A matrix of 14 rows (primate species) by 232 locations.
}
\source{
  Data, originally from Masami Hasegawa, are from
  \url{http://evolution.genetics.washington.edu/book/primates.dna}
}
\references{
Felsenstein, J. 2003. Inferring Phylogenies.  Sinauer.
}
\examples{
data(primateDNA)
\dontrun{
library(ape)
primates.dist <- dist.dna(primateDNA, model = "F84") 
primates.cmd <- cmdscale(primates.dist)
plot(primates.cmd) 
}
}
\keyword{datasets}
