% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colors.R
\name{adjust_colors}
\alias{adjust_colors}
\title{Adjust colors}
\usage{
adjust_colors(
  plot,
  new_colors = NULL,
  saturation = 1,
  labels = tidyplot_parse_labels(),
  downsample = c("evenly", "first", "last", "middle"),
  ...
)
}
\arguments{
\item{plot}{A \code{tidyplot} generated with the function \code{tidyplot()}.}

\item{new_colors}{A character vector of new hex colors to use. Can be a named character vector of hex colors to assign certain data labels to specific colors.}

\item{saturation}{A \code{number} between \code{0} and \code{1} for the color saturation of an object. A value of \code{0} is completely desaturated (white), \code{1} is the original color.}

\item{labels}{One of the options below. Please note that when \code{labels} is a
vector, it is highly recommended to also set the \code{breaks} argument as a
vector to protect against unintended mismatches.
\itemize{
\item \code{NULL} for no labels
\item \code{waiver()} for the default labels computed by the
transformation object
\item A character vector giving labels (must be same length as \code{breaks})
\item An expression vector (must be the same length as breaks). See ?plotmath for details.
\item A function that takes the breaks as input and returns labels
as output. Also accepts rlang \link[rlang:as_function]{lambda} function
notation.
}}

\item{downsample}{If too many colors are provided, whether to downsample \code{evenly}, or use the \code{first}, the \code{last} or the \code{middle} colors of the color vector. Defaults to \code{evenly}.}

\item{...}{Arguments passed on to the ggplot2 \code{scale} function.}
}
\value{
A \code{tidyplot} object.
}
\description{
Adjust colors
}
\examples{
# Plot without adjustments
study |>
  tidyplot(x = treatment, y = score, color = treatment) |>
  add_data_points() |>
  add_mean_bar(alpha = 0.4) |>
  add_sem_errorbar()

# Provide hex colors
study |>
  tidyplot(x = treatment, y = score, color = treatment) |>
  add_data_points() |>
  add_mean_bar(alpha = 0.4) |>
  add_sem_errorbar() |>
  adjust_colors(new_colors = c("#644296","#F08533","#3B78B0", "#D1352C"))

# Provide discrete color scheme
study |>
  tidyplot(x = treatment, y = score, color = treatment) |>
  add_data_points() |>
  add_mean_bar(alpha = 0.4) |>
  add_sem_errorbar() |>
  adjust_colors(new_colors = colors_discrete_seaside)

# Provide named vector
study |>
  tidyplot(x = treatment, y = score, color = treatment) |>
  add_data_points() |>
  add_mean_bar(alpha = 0.4) |>
  add_sem_errorbar() |>
  adjust_colors(new_colors = c(
    "A" = "pink",
    "B" = "purple",
    "C" = "grey",
    "D" = "blue"))

# Provide continuous color scheme
climate |>
  tidyplot(x = month, y = year, color = max_temperature) |>
  add_heatmap() |>
  adjust_colors(new_colors = colors_continuous_turbo)

}
\seealso{
\code{\link[=colors_discrete_friendly]{colors_discrete_friendly()}}, \code{\link[=colors_continuous_viridis]{colors_continuous_viridis()}}, \code{\link[=colors_diverging_blue2brown]{colors_diverging_blue2brown()}}, and \code{\link[=new_color_scheme]{new_color_scheme()}}
}
