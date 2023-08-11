# to relocate a column in R inside dplyr (most likely only works inside data.tables)

# needs dplyr

df_name <- df_name %>% relocate(column_to_move, .after = column_to_follow)