\name{plantStressCounts}
\alias{plantStressCounts}
\docType{data}
\title{
Matrix holding mRNA counts
}
\description{
Three treatments (3 samples each) were applied to Arabidopsis plants.
RNA-Seq technology was used to determine messenger RNA (mRNA) counts.
These were processed to remove counts for sequences that could not be 
identified as corresponding to a gene.  
}
\usage{data("plantStressCounts")}
\format{
The matrix \code{plantStressCounts} has 28775 rows,
and 9 columns.  Rows have the nondescript names
"Gene1" "Gene2" "Gene3" "Gene4" ... .  Columns are
named "CTL1", "CTL2", "CTL3", "Light1", "Light2", "Light3", 
"Drought1", "Drought2", "Drought3"
}
\details{
The treatments were:
\describe{
\item{Control}{Plants were grown under normal light and
watering conditions}
\item{Light stress}{One hour of continuous exposure to light
at ten times the level that the plants are normally grown under}
\item{Drought stress}{Nine days without water, causing wilting
of the leaves}
}
The interest is in how light and drought stress affect gene
expression to produce proteins.
}
\source{
Data are from Peter Crisp, obtained as part of his PhD work in the
ARC Centre of Excellence in Plant Energy Biology at Australian 
National University. 
}
\examples{
data(plantStressCounts)
## maybe str(plantStressCounts) ; plot(plantStressCounts) ...
}
\keyword{datasets}
