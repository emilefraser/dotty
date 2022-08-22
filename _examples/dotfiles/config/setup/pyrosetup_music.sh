# music
pip install spotify-downloader
pip install spotify_dl
pip3 install scdl

cd 
cd gh
git clone https://github.com/tmerten/spotify-ripper

# audio
pip install beets
pip install pyacoustid

cd
cd dl
aria2 https://github.com/acoustid/chromaprint/releases/download/v1.4.3/chromaprint-fpcalc-1.4.3-linux-armhf.tar.gz
mv chromaprint-fpcalc-1.4.3-linux-armhf.tar.gz chromaprint-fpcalc.tar.gz
sudo tar xvzf chromaprint-fpcalc.tar.gz
cd chromaprint-fpcalc/
cp fpcalc $PREFIX/bin/fpcalc
chmod 777 $PREFIX/bin/fpcalc

pip install discogs-client
pip install pylast

cd
curl https://del.dog/raw/helpme > SMLoadr.sh
chmod +x SMLoadr.sh
./SMLoadr.sh
mv SMLoadr.sh install/SMLoadr.sh