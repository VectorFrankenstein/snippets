# only keep rows with entirely non-zero values
no_zero_table <- full_data_table[rowSums(full_data_table != 0) > 1,]
