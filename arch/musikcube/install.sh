pacman -S libogg libvorbis libmicrohttpd ffmpeg lame cmake ncurses boost pulseaudio libpulse alsa-lib curl libev taglib libopenmpt pkg-config

git clone https://github.com/clangen/musikcube.git --recursive

cd musikcube
cmake -G "Unix Makefiles"
make
make install
