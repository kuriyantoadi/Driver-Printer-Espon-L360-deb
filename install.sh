cek_bit=`getconf LONG_BIT`

if [ $cek_bit = 64 ]
then
  sudo dpkg -i amd64/*.deb
  sudo apt update
  sudo apt install -f -y

elif [ $cek_bit = 32 ]
then
  sudo dpkg -i i386/*.deb
  sudo apt update
  sudo apt install -f -y

else
  echo "Error install, tidak bisa cek bit OS"
fi


cek_driver="$(sudo apt search epson-inkjet-printer-201401w)"

if [ $cek_driver = Sorting* ] then
  echo "Driver sudah terinstall"
else
  echo "Driver belum terinstall"
fi
