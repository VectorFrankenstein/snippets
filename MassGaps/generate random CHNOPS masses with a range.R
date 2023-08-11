# generate random numbers that satisfy the CHNOPS conditon

random_CHNOPS_mass <- function(x){

    x <- as.character(x)
    ranges <- strsplit(x, ",")[[1]] # under the assumptions that the first column is the one with the ranges
    ranges <- as.numeric(ranges) # proper data type

    start <- ranges[1]
    end <- ranges[2]
    decimal_points <- 5 # here is where the decimal number is determined

    number <- runif(1, min = start, max = end)
    number <- round(number, decimal_points)

    salt_nature <- function(number){

        md = abs(number - floor(number))
        
        if (md <= number * 0.00112 + 0.01953){
            return(TRUE)
        } else {
            FALSE
        }
    }
    
    while (!salt_nature(number)){

        # Generate 10 random numbers in the range with the given decimal precision
        number <- runif(1, min = start, max = end)
        number <- round(number, decimal_points)
    }
    
    # View the generated numbers
    return(number)   
}