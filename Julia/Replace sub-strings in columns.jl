# replace things in a julia dataframe's columns

for i in 1:nrow(df)
    replace!(df[i, :col1], "a" => "x")
    replace!(df[i, :col2], "t" => "u")
end
