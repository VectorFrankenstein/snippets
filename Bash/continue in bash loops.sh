test=0

while ((test <= 10)); do
  if ((test == 5)); then
    ((test++))
    continue
  fi
  echo $test
  ((test++))
done
