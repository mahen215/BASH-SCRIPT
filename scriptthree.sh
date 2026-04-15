3.WAS TO DELETE TO OLD FILES WHICH IS THREE DAYS BEFORE

#!bin/bash 
if find . -type f -mtime +3 -delete 
  than         
    echo "FILES DELETE COMPLETELY"
else 
   echo "FILES NOT DELETED"
fi
