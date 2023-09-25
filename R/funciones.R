# Loreau, M., and C. de Mazancourt. 2008. Species Synchrony and Its
# Drivers: Neutral and Nonneutral Community Dynamics in Fluctuating
# Environments. The American Naturalist 172:E48-E66.

phi <- function (x) {
  species.sd = apply(x, MARGIN = 2, FUN = sd)
  community.var = var(rowSums(x))
  return(community.var / sum(species.sd, na.rm = TRUE) ^ 2)
}

#' Synchrony measures by Leps et al. (2019)
#' (https://github.com/larsito/tempo)

#' Function to calculate different versions of the eta and phi
#' synchrony measures (Gross et al. 2014)

#' \code{cor_algo} calculates standard and t3, as well as abundance weighted and
#' unweighted versions of eta. All these are based on correlations of abundances
#' between species. There is a series of helper functions, \code{eta},
#' \code{eta_w}, \code{eta_t3}, and \code{eta_t3_w}, that makes the different
#' versions of eta available in single functions, by predefined argument values.

#' @param x temporal community data in a data frame. Species as columns, years
#' as rows.
#' @param method the correlation method to be used. This can be either cor, or
#' cor_t3, depending if correlations should be based on three term local
#' variance.
#' @param weighted logical. If TRUE, the averaging over the species will be
#' weighted by their abundance. The default is FALSE.
#' @return a single numeric value of the calculated version of eta.
#' @references Gross, K., B. J. Cardinale, J. W. Fox, A. Gonzalez, M. Loreau, H.
#' W. Polley, P. B. Reich, and J. van Ruijven. 2014. Species richness and the
#' temporal stability of biomass production: a new analysis of recent
#' biodiversity experiments. Am Nat 183:1-12.
#' @references Bluthgen, N., N. K. Simons, K. Jung, D. Prati, S. C. Renner, S.
#' Boch, M. Fischer, N. Holzel, V. H. Klaus, T. Kleinebecker, M. Tschapka, W.
#' W. Weisser, and M. M. Gossner. 2016. Land use imperils plant and animal
#' community stability through changes in asynchrony rather than diversity.
#' Nat Commun 7:10697.

#' @export cor_algo
cor_algo <- function(x, method, weighted = FALSE) {
  # Count number of species
  n <- ncol(x)
  # Empty vector of correlatios
  cor_sp <- vector("numeric", length = n)
  # Calculate correlations
  for (i in 1:n) {
    # Select column for focus species
    xi <- as.numeric(x[, i])
    # Sum the other species
    xnoti <- rowSums(x[,-i, drop = FALSE])
    # Calculate correlation according to method selected
    cor_sp[i] <- method(xi, xnoti)
  }
  # If weighted was selected
  if (weighted) {
    # Quocient between every species abundance and total abundance
    rel_ab <- colSums(x) / sum(x)
    # Weight correlations per relative abundance and sum
    sync <- sum(cor_sp * rel_ab)
  }
  # If weighted wasn't selected, just return mean correlation
  else {
    sync <- mean(cor_sp)
  }
  return(sync)
}

#' Standard, weighted, and t3 versions of eta
#'
#' Short functions that make use of cor_algo to enable calculating all four
#' versions of eta (standard, based on t3, and both either weighted by species
#' abundance or not) in separate functions, making use of the more generic
#' \code{cor_algo}.
#' @param x temporal community data in a data frame. Species as columns, years
#'   as rows.
#' @return a single numeric value of the calculated version of eta.
#' @references Gross, K., B. J. Cardinale, J. W. Fox, A. Gonzalez, M. Loreau, H.
#'   W. Polley, P. B. Reich, and J. van Ruijven. 2014. Species richness and the
#'   temporal stability of biomass production: a new analysis of recent
#'   biodiversity experiments. Am Nat 183:1-12.
#' @references Bluthgen, N., N. K. Simons, K. Jung, D. Prati, S. C. Renner, S.
#'   Boch, M. Fischer, N. Holzel, V. H. Klaus, T. Kleinebecker, M. Tschapka, W.
#'   W. Weisser, and M. M. Gossner. 2016. Land use imperils plant and animal
#'   community stability through changes in asynchrony rather than diversity.
#'   Nat Commun 7:10697.
eta <- function(x) {
  cor_algo(x, method = cor)
}

#' @rdname eta
eta_t3 <- function(x) {
  cor_algo(x, method = cor_t3)
}

#' @rdname eta
eta_w <- function(x) {
  cor_algo(x, method = cor, weighted = TRUE)
}

#' @rdname eta
eta_t3_w <- function(x) {
  cor_algo(x, method = cor_t3, weighted = TRUE)
}

# Standard and t3 version of phi synchrony measure.
#'
#' Functions \code{phi} and \code{phi_t3} calculate phi (Loreau and de
#' Mazancourt 2008) in its standard version, and based on three term local
#' quadrat variance.
#'
#' @param x temporal community data in a data frame. Species as columns, years
#'   as rows.
#' @return a single numeric value of phi.
#' @references Loreau, M., and C. de Mazancourt. 2008. Species Synchrony and Its
#'   Drivers: Neutral and Nonneutral Community Dynamics in Fluctuating
#'   Environments. The American Naturalist 172:E48-E66.
#' @export phi
#' @export phi_t3
phi <- function (x) {
  species.sd = apply(x, MARGIN = 2, FUN = sd)
  community.var = var(rowSums(x))
  return(community.var / sum(species.sd, na.rm = TRUE) ^ 2)
}

#' @rdname phi
phi_t3 <- function (x) {
  species.var = apply(x, MARGIN = 2, FUN = var_t3)
  species.sd = sqrt(species.var)
  community.var = var_t3(rowSums(x))
  return(community.var / sum(species.sd, na.rm = TRUE) ^ 2)
}
