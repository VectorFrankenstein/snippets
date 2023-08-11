formula_expander <- function(formula){
  expanded_formula <- list()
  molecules <- list()
  functional_groups <- strsplit(formula,"[()]")
  for(functional_group in functional_groups){
    typeof(unlist(strsplit(functional_group, "(?<=[a-z])(?=[A-Z])", perl=TRUE)))
    molecules <- c(molecules,unlist(strsplit(gsub("(?<=.)(?=[A-Z])", " ", functional_group, perl=TRUE), " ")))
  }
  for(i in molecules){
    if(grepl("[0-9]",i)){
      multiplier <- as.numeric(gsub("[^0-9]", "", i))
      element <- gsub("[^[:alpha:]]", "", i)
      expanded_formula <- c(expanded_formula,rep(element, multiplier))
    } else{
      expanded_formula <- c(expanded_formula, i)
    }
  }
  return(paste(expanded_formula, collapse = ""))
}
