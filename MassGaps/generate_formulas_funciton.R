random_formulas <- function (x) 
{
    
    X = "NA"
    while (X == "NA") {
        random_mass <- random_CHNOPS_mass(x)
        df <- calcMF(mz = random_mass, z = 1, ppm = 5, top = NULL, 
            elements = Rdisop::initializeElements(myElements), 
            maxCounts = TRUE, SeniorRule = TRUE, HCratio = TRUE, 
            moreRatios = TRUE, elementHeuristic = TRUE, Filters = list(DBErange = c(-5, 
                40), minElements = "C0H0N0S0O0", maxElements = "C40H60N20S20O20", 
                parity = "e", maxCounts = TRUE, SENIOR3 = 0, 
                HCratio = TRUE, moreRatios = TRUE, elementHeuristic = TRUE), 
            summarize = FALSE, BPPARAM = NULL)
        if (is.null(df)) {
            X <- "NA"
        }
        else {
            X <- df[order(abs(df$ppm)), ][1, 2]
        }
    }
    result <- list(mass = random_mass, formula = X)
    return(result)
}