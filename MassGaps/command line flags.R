#!/usr/bin/env Rscript

library(optparse)

option_list = list(
  make_option("--flag_one", type="character", default=NULL, help="Insert help document here."),# this is where the help text is created.
  make_option("--flag_two", type="character", default=NULL, help="Insert help text here."),
  make_option("--flag_three", type="character", default=NULL, help="Insert help text here.") 
)

opt_parser = OptionParser(option_list=option_list)

args = commandArgs(trailingOnly = TRUE)
opt = parse_args(opt_parser, args=args)

# how to access the flags

# use this to access them
opt$flag_one

opt$flag_two

opt$flag_three