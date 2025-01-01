#!/bin/sh
TARGET="quiz.vidio.com"  # Target ping (Google DNS), bisa diganti sesuai kebutuhan
PING_TIMEOUT=2    # Timeout ping dalam detik
RETRY_COUNT=3     # Jumlah percobaan ping sebelum dianggap gagal
while true; do
    # Cek koneksi dengan ping
    ping -c $RETRY_COUNT -W $PING_TIMEOUT $TARGET > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "Ping gagal! Mengaktifkan mode pesawat..."
        # Aktifkan mode pesawat
        adb shell settings put global airplane_mode_on 1
        adb shell am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true
        # Tunggu 2 detik dalam mode pesawat
        sleep 2
        echo "Mematikan mode pesawat setelah 2 detik..."
        # Matikan mode pesawat
        adb shell settings put global airplane_mode_on 0
        adb shell am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false
    else
        echo "Ping berhasil! Tidak ada tindakan yang diperlukan."
    fi
    # Tunggu 7 detik sebelum memeriksa koneksi lagi
    sleep 7
done
