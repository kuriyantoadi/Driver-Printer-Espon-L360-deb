berhasil='echo Driver Printer anda sudah terinstall'
cek_bit=`getconf LONG_BIT`
kosong="echo"

if [ $cek_bit = 64 ]
then
  sudo dpkg -i amd64/*.deb
  sudo apt update
  sudo apt install -f
  $kosong
  $berhasil

elif [ $cek_bit = 32 ]
then
  sudo dpkg -i i386/*.deb
  sudo apt update
  sudo apt install -f
  $kosong
  $berhasil

else
  echo "Driver Belum terinstall"
fi
