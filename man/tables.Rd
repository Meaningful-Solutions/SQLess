\name{tables}
\alias{tables}

\title{
Assigns SQLite database tables as data.frames in the global environment
}
\description{
Assigns specified table(s) from a SQLite file as data.frame(s) in the global environment. Each data.frame corresponds to the table of the same name.

This is an alternative to using dTable() unnecessarily.
}
\usage{
tables(table.names, sqlite.file)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{table.names}{
A vector of table names to be assigned in the global environment.
}
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
function (table.names, sqlite.file) 
{
    table.names <- c(table.names)
    db <- dbConnect(SQLite(), sqlite.file)
    for (tb in table.names) {
        txt <- paste(tb, "<<-dbGetQuery(db,'select * from", tb, 
            "')")
        eval(parse(text = txt))
    }
    dbDisconnect(db)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
