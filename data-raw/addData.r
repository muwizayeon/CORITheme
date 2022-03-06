#' source & save various data creation
#'
#'
rcu <- read.csv("rural_cnty_unemploys.csv")
usethis::use_data(rcu, overwrite = TRUE, compress = "xz")

ias <- read.csv("internet_access_sample_data.csv")
usethis::use_data(ias, overwrite = TRUE, compress = "xz")

rsh_pop <- read.csv("reshaped_population_sample_data.csv")
usethis::use_data(rsh_pop, compress="xz", overwrite = TRUE)
