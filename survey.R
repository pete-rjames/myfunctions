
# Dynamic svyby function


svyby_dyn <- function(x, y) {
  temp <- svyby(as.formula(paste("~", names(des$variables)[(x)])),
        as.formula(paste("~", names(des$variables)[(y)])),
        design = des, FUN = svymean)
