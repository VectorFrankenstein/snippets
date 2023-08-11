# make random numbers within a range in R

random_number <- function(x){
    x <- as.character(x)
    ranges <- strsplit(x, ",")[[1]] # under the assumptions that the first column is the one with the ranges
    ranges <- as.numeric(ranges) # proper data type

    start <- ranges[1]
    end <- ranges[2]
    decimal_points <- 5

    # Generate 10 random numbers in the range with the given decimal precision
    number <- runif(1, min = start, max = end)
    number <- round(number, decimal_points)

    # View the generated numbers
    number   
}