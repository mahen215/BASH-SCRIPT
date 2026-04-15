9.WAS THAT COUNT FILE TYPE IN DIRECTORY

#!/bin/bash
echo "..........................................."
echo "...........COUNT FILE IN DIRECTORY........."
echo "..........................................."
ls | wc -l
echo "==========================================="

#!/bin/bash
for file in $(ls | wc -l)
 do 
  echo "$file"
done
