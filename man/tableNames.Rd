\name{tableNames}
\alias{tableNames}

\title{
Assigns the table names of a SQLite database to the global environment
}
\description{
Assigns a data.frame consisting of the table names in a SQLite database to the global environment variable table.names.
}
\usage{
tableNames(sqlite.file)
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
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
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
    table.names <<- dTableNames(sqlite.file)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
