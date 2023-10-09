# this is what I had to use to get the list of job-names and have them in an organized manner

qdel $(qstat -u rdhakal | tail -n 9 | cut -d '.' -f 1 | tr '\n' ' ')