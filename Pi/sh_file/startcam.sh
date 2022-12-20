  cd /home/pi/cancer/mjpg-streamer/mjpg-streamer-experimental
./mjpg_streamer -i "./input_uvc.so -q 0 -f 16" -o "./output_http.so -p 8082 -w ./www"
