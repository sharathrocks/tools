total=0
find $1 -type f \( -name \*.js -o -name \*.jsx \) -not -path "*/node_modules*/*" | while read FILE; do
     #you see use grep instead wc ! for properly counting
     count=$(grep -c ^ < "$FILE")
     echo "$FILE,$count"
     total=total+count #in bash, you can convert this for another shell
done
echo TOTAL LINES COUNTED:  $total
