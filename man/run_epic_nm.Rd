% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_EPIC_NM.R
\name{run_epic_nm}
\alias{run_epic_nm}
\title{This is a main function which iterates an EPIC algorithm function, saves data}
\usage{
run_epic_nm(maxEval, nobj, nvar, L, U, func, problem.name = NULL,
  local.search = TRUE, p.next = 0.6, p.pareto = 0.7, strategy = 1,
  repN = 500, absmin = NULL, absmax = NULL, con = FALSE,
  stopping = FALSE)
}
\arguments{
\item{maxEval}{- maximum number of evaluations}

\item{nobj}{- number of objectives}

\item{nvar}{- number of decision variables}

\item{L, U}{- row vectors of lower and upper bounds of the design space}

\item{func}{- TRUE, if there is availble function, FALSE if we have only a table of evaluated data (experiments)}

\item{problem.name}{- the string of problem corresponding to its function, NULL - if problem function is unavailable}

\item{local.search}{- indicates what EPIC version will be run. TRUE - enhanced EPIC version,FALSE -  the original one. DEFAULT = TRUE.}

\item{p.next}{-  the propbability value used to select a decision vector, defalut value is 0.6}

\item{p.pareto}{-  indicator used to assign points to one of the set: dominated or nondominated, default value is 0.7}

\item{strategy}{- strategy id used to select nex vector to evaluate, default value is 1}

\item{repN}{- a size of decision space representation sample}

\item{absmin}{- the estimate of minimum values of objective function (if not provided, calculated minimum value is used)}

\item{absmax}{- the estimate of maximum values of objective functions (if not provided we will use the max value of Y)}

\item{con}{- constraints, an analytical function cheap to evaluate, in a form g_i(x)>=0, if available; otherwise it is equal to FALSE}

\item{stopping}{- an indicator used to stop an algorithm at every iteration; TRUE - if algorithm is stopping, otherwise FALSE}
}
\value{
Pareto optimal solutions of evaluated vectors as well as all evaluated solutions.
}
\description{
This is a main function which iterates an EPIC algorithm function, saves data
}
