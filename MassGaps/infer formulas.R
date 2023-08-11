# infer molecular formuals from given masses

myElements <- c("C","H","N","O","S","P")

best_fit_mf <- function(mean_mass){
  df <- calcMF(mz = mean_mass, z = 1, ppm = 5, top = NULL,
  elements = Rdisop::initializeElements(myElements), maxCounts = TRUE,
  SeniorRule = TRUE, HCratio = TRUE, moreRatios = TRUE,
  elementHeuristic = TRUE, Filters = list(DBErange = c(-5, 40)
  , minElements = "C0H0N0S0O0P0", maxElements = "C40H60N20S20O20P20", parity = "e", maxCounts =
  TRUE, SENIOR3 = 0, HCratio = TRUE, moreRatios = TRUE, elementHeuristic =
  TRUE), summarize = FALSE, BPPARAM = NULL)

  if(is.null(df)){
    return('NA')
  }else{
    return(df[order(abs(df$ppm)),][1,2])
  }

}