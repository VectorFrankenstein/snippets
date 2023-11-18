# here the % operator is used to remove the longest match specified after it

# the longest match here is `.*` i.e. anything after the do

base_name="$(basename -- $file)"
base_name="${base_name%.*}"
