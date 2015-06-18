\name{dTable}
\alias{dTable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Returns an entire table from a SQLite database as a data.frame
}
\description{
Returns an entire table from a SQLite database as a data.frame
}
\usage{
dTable(table.name, sqlite.file)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{table.name}{
The name of the table
}
  \item{sqlite.file}{
The SQLite file
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
function (table.name, sqlite.file) 
{
    db <- dbConnect(SQLite(), sqlite.file)
    qs <- paste("select * from", table.name)
    response <- dbGetQuery(db, qs)
    dbDisconnect(db)
    return(response)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
