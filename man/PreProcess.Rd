\name{PreProcess}
\alias{PreProcess}
\title{Pre-process texts to create a corpus suitable for \code{ExpAgendaVonmon}}
\source{
  Feinerer, K. Hornik, and D. Meyer. Text mining
  infrastructure in R. Journal of Statistical Software,
  25(5):1-54, March 2008.
  \url{http://www.jstatsoft.org/v25/i05}.
}
\usage{
  PreProcess(textsDF = NULL, TextsCol, AuthorCol, IDCol,
    textsPattern = NULL, authorsDF = NULL,
    removeNumbers = TRUE, StopWords = NULL,
    removeAuthors = NULL, sparse = 0.4)
}
\arguments{
  \item{textsDF}{a data frame containing a column with
  texts and a column with author names. Unnecessary if
  \code{textsDir} and \code{authorsDF} are set.}

  \item{TextsCol}{character string identifying the column
  in \code{textsDF} with the texts.}

  \item{AuthorCol}{character string identifying the column
  in either \code{textsDF} or \code{authorDF} identifying
  the authors.}

  \item{IDCol}{a character string with the column uniquely
  identifying each text either in \code{textsDF} or
  \code{authorDF}.}

  \item{textsPattern}{character string. Regular expression
  pattern identifying the texts in \code{textsDF}.
  nnecessary if \code{textDF} is set.}

  \item{authorsDF}{a data frame with author information for
  each text in \code{textDF}. They must be in the same
  order. Unnecessary if \code{textDF} is set.}

  \item{removeNumbers}{logical. Whether or not to remove
  numbers from the texts.}

  \item{StopWords}{character vector of stop words to
  remove. If \code{StopWords = NULL} (the default) then
  \code{tm}'s default English stop word list will be used.
  See \code{\link{stopwords}}.}

  \item{removeAuthors}{character vector. The names of
  authors to remove.}

  \item{sparse}{numeric for the maximal allowed sparsity.
  See \code{\link{removeSparseTerms}}}
}
\value{
  Returns an object of class \code{ExpAgendaDTMatrix} that
  can be used with \code{\link{ExpAgendaVonmon}} to
  estimated authors' expressed agendas in documents. The
  object contains three matrices. \code{doc.term} is a
  document term matrix and \code{authors} locates the
  authors of the texts in \code{doc.term}. \code{authorID}
  is used for \code{\link{DocTopics}} to return the
  documents their their original order.
}
\description{
  \code{PreProcess} prepares texts and author information
  for use with \code{\link{ExpAgendaVonmon}}.
}

