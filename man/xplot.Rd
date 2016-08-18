\name{xplot}
\alias{xplot}
\title{Repeat specified plot across multiple columns of a matrix}
\description{
This is designed to repeat a plot, usually an image plot, across
multiple columns of a matrix of gene expression values. A boxplot
that shows the distribution of values appears below each panel.
}
\usage{
xplot(data = DAAGbio::coralRG$R, images = 1:6, layout = DAAGbio::coralRG$printer, mfrow =
c(3, 2),
FUN = imgplot, device = NULL, title = NULL, width = 7.5, height = 10,
paneltitles = c("1:R/G", "2:G/R", "3:R/G", "4:G/R", "5:R/G", "6:G/R"),
paneltitles.line = 0.5,
mar = c(3.6, 3.6, 1.6, 0.6), oma = c(0.6, 0.6, 1.6, 0.6), file = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{matrix of expression array values}
  \item{images}{columns of matrix for which plots are required}
  \item{layout}{layout of spots, in the order (rows of grids, columns of
  grids, rows of spots in a grid, columns in a grid)}
  \item{mfrow}{row by column layout of plots on a page}
  \item{FUN}{\code{imgplot}, or \code{imageplot} from \code{limma}}
  \item{device}{If \code{NULL}, plot appears on the monitor.  Other
    possibilities include \code{pdf}, \code{postscript}, \code{png},
    \code{jpeg} and \code{bitmap}}
  \item{title}{A title for the page of graphs}
  \item{width}{width of plot (in)}
  \item{height}{height of plot (in)}
  \item{paneltitles}{character vector of titles for individual panels}
  \item{paneltitles.line}{height (lines) at which panel title are to appear
  above the upper margin of each panel}
  \item{mar}{Setting for \code{par$mar}}
  \item{oma}{Setting for \code{par$mar}}
  \item{file}{Optional file name, if output is to a file}
}

\author{J. H. Maindonald}
\examples{
\dontrun{
xplot(data=coralRG$R, layout=coralRG$printer, FUN=imgplot)
}

## The function is currently defined as
function(data = DAAGbio::coralRG$R, images=1:6, layout = DAAGbio::coralRG$printer, mfrow=c(3,2),
           FUN = imgplot, device=NULL, title=NULL, width=7.5, height=10,
           paneltitles=c("1:R/G","2:G/R", "3:R/G","4:G/R", "5:R/G","6:G/R"),
           paneltitles.line=0.5,
           mar=c(3.6,3.6,1.6,0.6), oma=c(0.6,0.6,1.6,0.6), file=NULL){
    if(is.null(title)){title <- as.character(substitute(data))
    title <- paste(title[2], title[3], sep=":")
                    }
    if(is.null(file))file <- title
    nch <- nchar(title)
    if(!is.null(device)){devnam <- deparse(substitute(device))
    ext <- switch(devnam, ps="ps", pdf="pdf", png="png",
                  jpeg="jpg", bitmap="bmp")
      file <- paste(title,".", ext, sep="")
      print(file)
      device(file=file, width=width, height=height)
    }
    oldpar <- par(mfrow=mfrow, mgp=c(1,0.25,0), oma=oma, mar=mar)
    on.exit(par(oldpar))
    for(i in images){
      FUN(data[,i], layout=layout)
      mtext(side=3,line=paneltitles.line,paneltitles[i],adj=0)
    }
    mtext(side=3, line=0.25, title, outer=TRUE)
    if(!is.null(device))dev.off()
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hplot}

