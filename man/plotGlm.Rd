% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotGlm.R
\name{plot.glm}
\alias{plot.glm}
\title{Plot diagnostics for a binomial \code{glm} model}
\usage{
\method{plot}{glm}(
  x,
  y = NULL,
  ...,
  toPdf = FALSE,
  file = "dxPlots.pdf",
  palette = c("Dark2", "Set2", "Accent", "Blues"),
  usePalette = TRUE,
  bg = NULL,
  col = "white",
  alpha = 0.4,
  cex = 2,
  pch = 21,
  cex.main = 1.5,
  inches = 0.25,
  identify = FALSE,
  devNew = TRUE
)
}
\arguments{
\item{x}{A regression model with class \code{glm} and
\code{x$family$family == "binomial"}.}

\item{y}{Not used. Present for compatibility with
generic \code{plot()} function.}

\item{...}{Additional arguments, which can be
passed to the plotting functions. See:
\cr
?graphics::plot.default
\cr
?graphics::symbols
\cr
?graphics::par}

\item{toPdf}{\itemize{
 \item If \code{toPdf=TRUE} the output will be directed
      to a \code{.pdf} file.
 \item If \code{toPdf=FALSE} a new device is opened for each plot.
}}

\item{file}{Filename if writing to \code{.pdf} as above,
e.g. \code{"plots.pdf"}.}

\item{palette}{Palette of colors to use as the
 'fill'/ 'background' colors for the plots.
\cr
The options are taken from
\href{https://colorbrewer2.org/}{color_brewer}.
\cr}

\item{usePalette}{Use the colorscheme in palette above.
\itemize{
 \item If \code{usePalette=TRUE} (the default), this colorscheme
        will be passed to the argument \code{bg} below:
        \itemize{
         \item \code{graphics::plot.default(bg= )}
         \item \code{graphics::symbols(bg= )}
         }
 \item If \code{usePalette=FALSE}, then the color specified
       in \code{bg} below will be used instead.
}}

\item{bg}{The 'fill' or background color(s) to use, if
\code{usePalette=FALSE}.
\cr
This can be a \code{vector} of colors.}

\item{col}{The 'edge' or 'foreground' color used
to outline points in the plot.
\cr
The default, \code{"white"} is used to make overlapping points
easier to see.
\cr
This is passed as an argument to
\itemize{
 \item \code{graphics::plot.default(col= )}
 \item \code{graphics::symbols(fg= )}
}}

\item{alpha}{Transparency for colors above.
\cr
Should be in the range \code{0} (transparent) to \code{1} (opaque). See:
\cr
?grDevices::adjustcolor}

\item{cex}{\bold{C}haracter \bold{ex}pansion.
\cr
A multiplier used for size of the plotting symbols/ characters. See:
\cr
?graphics::par}

\item{pch}{\bold{P}lotting \bold{ch}aracter.
 \cr
 The symbol/ character to for the plot.
 \cr
 The default, \code{pch=21} shows filled circles at each point. See:
\cr
?graphics::points}

\item{cex.main}{\bold{C}haracter \bold{ex}pansion for
the plot title and the labels for the axes.}

\item{inches}{Width of circles for the bubble plot. See
\cr
?graphics::symbols}

\item{identify}{If \code{TRUE} will give option to identify
individual points on a number of the plots produced.
\cr
The number which appears next to the point corresponds
to the relevant row as given by \code{\link{dx}}.
\cr
This may be useful for identifying outliers. See:
\cr
?graphics::identify}

\item{devNew}{If \code{devNew==TRUE} (the default),
\code{dev.new} will be called before each plot.
\cr
This is useful in interactive mode.
\cr
\code{devNew==FALSE} is used for vignette building by \code{package:knitr}.}
}
\value{
There is one point per observation.

The following show \bold{probability} \eqn{P_i}{P[i]} on the \eqn{x}-axis:

\item{\eqn{P_i \times h_i}{P[i] vs. h[i]}}{
 Probability vs. leverage.
}

\item{\eqn{P_i \times \Delta P \chi^2_i}{P[i] vs. dChisq[i]}}{
 Probability vs. the change in the standardized
 Pearsons chi-squared
 with observation \eqn{i} excluded.
}
\item{\eqn{P_i \times \Delta D_i}{P[i] vs. dDev[i]}}{
 Probability vs. the change in the standardized deviance
 with observation \eqn{i} excluded.
}
\item{\eqn{P_i \times \Delta \hat{\beta}_i}{P[i] vs. dBhat[i]}}{
 Probability vs. the change in the standardized
 maximum likelihood estimators of the model coefficients
 with observation \eqn{i} excluded.
}
\item{\eqn{P_i \times \Delta P \chi^2_i}{P[i] vs. dChisq[i]}}{
 Bubbleplot of
 probability vs. the change in the standardized
 Pearsons chi-squared
 with observation \eqn{i} excluded.
 \cr
 The area \eqn{A_i}{A[i]} of each circle is
 proportional to \eqn{\Delta \hat{\beta}_i}{dBhat[i]}:
  \deqn{A_i = \pi r_i^2 \quad r_i = \sqrt{\frac{\Delta \hat{\beta}_i}{P_i}}}{
        A[i] = pi r[i]^2, r[i] = (dBhat[i] / P[i])^0.5}
 For details see:
 \cr
 ?graphics::symbols
}

The following show \bold{leverage} \eqn{h_i}{h[i]} on the \eqn{x}-axis:

\item{\eqn{h_i \times \Delta P \chi^2_i}{h[i] vs. dChisq[i]}}{
 Leverage vs. the change in the standardized
 Pearsons chi-squared
 with observation \eqn{i} excluded.
}
\item{\eqn{h_i \times \Delta D_i}{h[i] vs. dDev[i]}}{
 Leverage vs. the change in the standardized deviance
 with observation \eqn{i} excluded.
}
\item{\eqn{h_i \times \Delta \hat{\beta}_i}{h[i] vs. dBhat[i]}}{
 Leverage vs. the change in the standardized
 maximum likelihood estimators of the model coefficients
 with observation \eqn{i} excluded.
}

The correlation of
\eqn{\Delta \chi^2_i, \Delta D_i \mathrm{and} \hat{\beta}_i}{
     dChisq, dDev and dBhat}.
is shown in a \code{pairs} plot. See:
\cr
?graphics::pairs

The \bold{Value} of \code{\link{dx}} is also returned, invisibly.
}
\description{
Standard diagnostic plots.
}
\note{
A choice of colors can be found with e.g.
\cr
grDevices::colours()[grep("blue", grDevices::colours())]
}
\examples{
## H&L 2nd ed. Table 4.9. Figures 5.5-5.8. Pages 177-180.
data(uis)
uis <- within(uis, {
    NDRGFP1 <- 10 / (NDRGTX + 1)
    NDRGFP2 <- NDRGFP1 * log((NDRGFP1 + 1) / 10)
})
summary(g1 <- glm(DFREE ~ AGE + NDRGFP1 + NDRGFP2 + IVHX +
                  RACE + TREAT + SITE +
                  AGE:NDRGFP1 + RACE:SITE,
                  family=binomial, data=uis))
plot(g1)
## H&L. Similar to Figure 5.3.
set.seed(133)
(g1 <- glm(sample(c(0, 1), size=100,
                  replace=TRUE, prob=c(0.5, 0.5))
           ~ 0 + I(0.08 * rnorm(n=100, mean=0, sd=sqrt(9))),
           family=binomial))$coef # approx. 0.8
plot(g1)
}
\keyword{hplot}
