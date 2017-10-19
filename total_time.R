library(devtools)
devtools::install_github("palautatan/biohazardLibrary")

library("bcu")
data = read.csv("/Users/treehouse3/Dropbox/Effect_of_partitioning/step_2_shakedown_runs/output/Python/shakedown_runs_times_manual.csv", as.is=TRUE)

bcu:::convert_hhmmss(data$hh.mm.ss[1])
sum(unlist(lapply(data$hh.mm.ss, bcu:::convert_hhmmss)))
