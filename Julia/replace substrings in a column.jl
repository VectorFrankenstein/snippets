# replace substrings in a julia dataframe column
df.x .= replace.(df.x, r"^ab " => "")