echo
# the next line can be modified to the zypper command you want
echo "zypper dup --auto-agree-with-licenses --allow-vendor-change -y --download-only"
echo

iteration=0
rc=-1
while [ $rc -ne 0 ]; do
  #the next line sould be identical to the echo above
  zypper dup --auto-agree-with-licenses --allow-vendor-change -y --download-only
  rc=$?
  echo
  echo "   Count: $iteration"
  echo "Ret Code: $rc"
  echo
  sleep 2
  ((iteration++))
done
echo
