 #!/system/bin/sh
echo "Starting the script..."
cd ../..
pkg update && pkg upgrade -y
pkg install python -y
pkg install curl -y 
pkg install ffmpeg -y
pip install youtube-dl
mkdir .config
cd .config
mkdir youtube-dl
cd youtube-dl
echo "-f dash-VIDEO-1+bestaudio/dash-VIDEO-1/best -o /storage/emulated/0/download_vids/%(title)s.%(ext)s" >> config 
cd ../..
mkdir bin
cd bin  
echo 'youtube-dl $1' >> termux-url-opener
echo "Congrats the process has now been completed" 
