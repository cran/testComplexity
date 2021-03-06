% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expect_loglinear_time.R
\name{expect_loglinear_time}
\alias{expect_loglinear_time}
\title{Log-Linear Time Complexity Test function}
\usage{
expect_loglinear_time(...)
}
\arguments{
\item{...}{Parameters for the expression to be tested, which is a function of data.sizes, as in asymptoticTimings}
}
\value{
null, throws error if complexity is not log-linear. (i.e. O(NlogN) for size N, in Big-O notation)
}
\description{
Function to test if input algorithm has log-linear time complexity
}
\details{
For more information regarding its implementation or functionality/usage, please check https://anirban166.github.io//Testing-functions/
}
\examples{
\donttest{
# Running the quick sort algorithm with sampling against a set of increasing input data sizes:
sizes = 10^seq(1, 3, by = 0.5)
expect_loglinear_time(sort(sample(1:100, data.sizes, replace = TRUE), method = "quick"), sizes)
# The code above will throw an error if the function does not follow a log-linear trend.
}
}
