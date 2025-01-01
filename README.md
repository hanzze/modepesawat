#untuk menjalankan perintah ketikkan ini di terminal kalian 

```
wget https://raw.githubusercontent.com/hanzze/modepesawat/refs/heads/main/pesawat.sh
nohup sh pesawat.sh > internet_log.txt 2>&1 &
```

#jika ingin memulai automatis saat setelah booting atau resetart edit file di
/etc/rc.local

#tambahkan di atasnya EXIT perintah ini
```
sleep 30 && nohup sh pesawat.sh > internet_log.txt 2>&1 &
```
#trus save dan kalian coba resetart stb kalian.. 

#ingat yah ini cek ping nya interval nya 7 detik jadi cepet banget serasa nggk ada dc

#kalau kalian mau rubah silahkan.. di dalam script bawah sendiri ada sleep 7.. kalian rubah sesuai kalian
