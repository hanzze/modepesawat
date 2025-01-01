untuk menjalankan perintah ketikkan ini di terminal kalian 

```
wget https://raw.githubusercontent.com/hanzze/modepesawat/refs/heads/main/pesawat.sh
nohup sh pesawat.sh > internet_log.txt 2>&1 &

jika ingin memulai automatis saat setelah booting atau resetart edit file di
/etc/rc.local
tambahkan di atasnya EXIT perintah ini
```
sleep 30 && nohup sh pesawat.sh > internet_log.txt 2>&1 &

trus save dan kalian coba resetart stb kalian.. 

