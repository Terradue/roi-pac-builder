#!/bin/bash

# ROI PAC rpm packager


usage ()
{
  echo 'Usage : ./package.sh'
  echo	'  -s	Silent mode'
  echo  '  -h	help'
  exit
}

package(){
# maven cannot distinguish sintax warnings from errors,
# hence we replace the ERROR level to INFO
echo "Packaging ROI PAC rpm"
mvn clean package | sed -e 's/\[ERROR\]/\[INFO\]/g'
echo "Packaging Successfull"
}

packageSilently(){
mvn clean package > /dev/null
}

case $1 in
        -h )		usage ;;
	-s )		packageSilently ;;
	*  )		package ;;
esac
