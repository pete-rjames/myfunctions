# ACS
# http://eglenn.scripts.mit.edu/citystate/2016/03/acs-version-2-0-now-on-cran
# http://dusp.mit.edu/sites/dusp.mit.edu/files/attachments/publications/working_with_acs_R_v_2.0.pdf
# api.key.install(key="532efedcbef7305446ebc80bdd21c7fa1695644e")

library(acs)
ca.cty <- geo.make(state="CA", county = "*")

ca.cty.pop <- estimate(acs.fetch(geography = ca.cty,
                           endyear = 2014,
                           table.number="B01003"))

ca.cty.pop <- data.frame(county = rownames(ca.cty.pop),
                            population = ca.cty.pop[,1])
rownames(ca.cty.pop) <- NULL
write.csv(ca.cty.pop, file = "ca_cty_pop.csv")
  
