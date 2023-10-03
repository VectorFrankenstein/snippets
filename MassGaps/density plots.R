# How to make density plots in R using ggplots
ggplot() +
geom_density(aes(x = mixed_heritability, fill = "Mixed Heritability"), alpha = 0.5) +
  geom_density(aes(x = no_drop_heritability, fill = "No Drop Heritability"), alpha = 0.5) + 
  xlab("Heritabilities") + ylab("") +
  scale_fill_manual(
      name = "Dropping zeroed replicates;\nheritabilites going up",
      values = c("red", "blue"),
      labels = c("Mixed Heritability", "No Drop Heritability"))