apply(df, 1, function(x) any(unlist(x) %in% list_name))
