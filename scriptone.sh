1.WAS FOR  ACCESSING DATA FROM FILE

#!/bin/bash
for data in $(cat *.txt)
 do  
  echo "$data"   
done
