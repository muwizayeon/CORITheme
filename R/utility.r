#' Vector of CORI colors
#'
#' @examples
#' cori_colors["Emerald"]
#'
#' @export
#' 
cori_colors <- c(
  `Emerald` = "#018362", `Bright Mint` = "#A3E1B5",
  `Bright Gold` = "#FFE474",
  `RIN Orange` = "#E64F2B", `Mid Orange` = "#FA804B",`Light Orange` = "#FECEB8",
  `RIN Blue` = "#234FBF", `Mid Blue` = "#3E80EA", `Light Blue` = "#B4CEF9",
  `RII Purple` = "#48326A", `Mid Purple` = "#7658A2", `Light Purple` = "#CBBEDC",
  `CIF Mid Blue` = "#02BCCB"
)


#' List of CORI palettes
#'
#' @examples
#' cori_palettes[["ctg2gn"]]
#'
#' @export
#' 
cori_palettes <- list(
  'ctg2gn' = cori_cols("Emerald", "Bright Mint"),
  'ctg2or' = cori_cols("RIN Orange", "Light Orange"),
  'ctg2pu' = cori_cols("RII Purple", "Light Purple"),
  'ctg2bu' = cori_cols("RIN Blue", "Light Blue"),
  'ctg7' = cori_cols(
    "Emerald", "Bright Mint",
    "Bright Gold",
    "Mid Orange", "Mid Blue",
    "Mid Purple", "CIF Mid Blue")
)
