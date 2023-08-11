diffs <- abs(outer(x, x, "-"))
return(diffs[lower.tri(diffs)])