\name{csv2Sqlite}
\alias{csv2Sqlite}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Import csv files into a sqlite database.
}
\description{
Pass a vector of file names (without the csv extention), a name a of sqlite database in the working directory, and the path to where all of the csv files are located.
}
\usage{
csv2Sqlite(csv.files, sqlite.file, csv.dir)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{csv.files}{
A vector of file names without the csv extention. All of the files must be in the same directory for the function to work.
}
  \item{sqlite.file}{
The name of the sqlite file to use in the working directory. If it doesn't exist, it will after the function is called.
}
  \item{csv.dir}{
The path to the director where all of the csv files are located.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
No values are returned.
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
function (csv.files, sqlite.file, csv.dir) 
{
    db <- dbConnect(SQLite(), sqlite.file)
    for (csv in csv.files) {
        txt <- paste(csv, "<-read.csv(paste('", csv.dir, csv, 
            ".csv', sep=''), stringsAsFactors=FALSE);", sep = "")
        eval(parse(text = txt))
        txt <- paste("dbWriteTable(db, '", csv, "', ", csv, " );", 
            sep = "")
        eval(parse(text = txt))
    }
    dbDisconnect(db)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
