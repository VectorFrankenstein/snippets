mass_range_calculator <- function(mass_value){
    upper <- mass_value + (mass_value * 0.000001)
    lower <- mass_value - (mass_value * 0.000001)
    mass_range <- list(upper = upper, lower = lower)
    return(mass_range)
}