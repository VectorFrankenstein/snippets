# how to bin a list in R

bins <- cut(mean_masses,breaks=seq(min(mean_masses)-5,max(mean_masses) + 5 ,by= 5))