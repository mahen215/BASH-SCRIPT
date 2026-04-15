7.WAS TO CHECK PROCESS STATUS AND KILLING IT
#!/bin/bash 
echo "==========================="
echo " CHECK PROCESS STATUS "
echo "==========================="
ps
echo "********************************************"
echo "**   KILL PROCESS                         **"
echo "********************************************"
kill PID TTY
echo "==========================="
echo " COMPLETE PROCESS          "
echo "==========================="
