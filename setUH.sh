#  setUH.sh - check to see if root and make an application home directory
#  of the parent of the directory of this scripts directory
#
# (c) 2017 - Timothy D. Witham tim.wookie.witham@gmail.com
# Licensed under BSD 2-Clause
pushd `dirname $01` > /dev/null
cd ..
export AHOME=`pwd`
popd > /dev/null
if (( $EUID == root )) ; then
  echo "This application must not be run by root"
  exit
fi
