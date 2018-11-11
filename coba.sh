#output="$(ls -l)"
#echo "${output}"

cek_driver="$(sudo apt search epson-inkjet-printer-201401w)"
#cek_driver="$(cat output)"
#cek="cek"

if [ $cek_driver = $cek ]
then
  echo "Driver sudah terinstall"
else
  echo "Driver belum terinstall"
fi
