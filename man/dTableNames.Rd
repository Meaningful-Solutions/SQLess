\name{dTableNames}
\alias{dTableNames}

\title{
Returns a data.frame with all of the tables in a SQLite data.base listed.
}
\description{
Returns a data.frame with all of the tables in a SQLite data.base listed.
}
\usage{
dTableNames(sqlite.file)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sqlite.file}{
The name of the SQLite file.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A data.frame
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (sqlite.file) 
{
    db <- dbConnect(SQLite(), sqlite.file)
    response <- dbGetQuery(db, "select name from sqlite_master where type='table'")
    dbDisconnect(db)
    return(response)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
