 #!/system/bin/sh
echo "Starting the script..."
cd ..
cd .. 
pkg update && pkg upgrade 
echo "Downloading python..."
pkg install python -y
echo "Installing Youtube-dl..."
pip install youtube-dl
echo "Upgrading Pip..."
pip install --upgrade pip
echo "Making necessary files..."
mkdir .config

cd .config

mkdir youtube-dl

cd youtube-dl

echo "-f dash-VIDEO-1+bestaudio/dash-VIDEO-1/best -o /storage/emulated/0/download_vids/%(title)s.%(ext)s" >> config 
cd ..
cd ..

mkdir bin
cd bin 
 
echo 'youtube-dl $1' >> termux-url-opener


echo "Congrats the process has now been completed" 
