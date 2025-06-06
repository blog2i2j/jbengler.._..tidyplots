% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adjust.R
\name{adjust_padding}
\alias{adjust_padding}
\title{Adjust plot area padding}
\usage{
adjust_padding(
  plot,
  top = NA,
  right = NA,
  bottom = NA,
  left = NA,
  all = NA,
  force_continuous = FALSE,
  ...
)
}
\arguments{
\item{plot}{A \code{tidyplot} generated with the function \code{tidyplot()}.}

\item{top}{Extra space between the data points and the top. Defaults to \code{NA}, which does not change the padding.}

\item{right}{Extra space between the data points and the right. Defaults to \code{NA}, which does not change the padding.}

\item{bottom}{Extra space between the data points and the bottom. Defaults to \code{NA}, which does not change the padding.}

\item{left}{Extra space between the data points and the left. Defaults to \code{NA}, which does not change the padding.}

\item{all}{Extra space around the data pointst. Overwrites \code{top}, \code{right}, \code{bottom}, \code{left} if set. Defaults to \code{NA}, which does not change the padding.}

\item{force_continuous}{Whether to force the axis to be continuous. Defaults to \code{FALSE}.}

\item{...}{Arguments passed on to the \code{geom} function.}
}
\value{
A \code{tidyplot} object.
}
\description{
Adjust plot area padding
}
\examples{
# Plot without adjustments
animals |>
  tidyplot(x = weight, y = size, color = family) |>
  add_data_points() |>
  adjust_padding()

# Increase plot area padding
animals |>
  tidyplot(x = weight, y = size, color = family) |>
  add_data_points() |>
  adjust_padding(all = 0.2)

animals |>
  tidyplot(x = weight, y = size, color = family) |>
  add_data_points() |>
  adjust_padding(top = 0.8)

animals |>
  tidyplot(x = weight, y = size, color = family) |>
  add_data_points() |>
  adjust_padding(bottom = 0.8)

animals |>
  tidyplot(x = weight, y = size, color = family) |>
  add_data_points() |>
  adjust_padding(right = 0.8)

animals |>
  tidyplot(x = weight, y = size, color = family) |>
  add_data_points() |>
  adjust_padding(left = 0.8)

}
