library(doParallel)

cores <- detectCores()
cl <- makeCluster(cores)
registerDoParallel(cl)

clusterExport(cl, c("list", "random_formulas","random_CHNOPS_mass","best_fit_mf"))  # Export necessary functions

clusterEvalQ(cl, {
  library(MassTools)
  library(dplyr)
  # Add more package libraries if needed
})

chunk_size <- ceiling(length(bins) / cores)  # Determine chunk size

mz_and_mf <- foreach(m = iter(bins, by = "chunks", chunksize = chunk_size), .combine = c) %dopar% {
  random_formulas(m)
}

stopCluster(cl)