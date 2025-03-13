termux-setup-storage
sed -i 's@^ $deb.*stable main$ $@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/apt/termux-main stable main@' $PREFIX/etc/apt/sources.list
apt update && apt upgrade
#pip config set global.index-url https://mirrors.aliyun.com/pypi/simple
pkg install python libxml2 libxslt pkg-config openssl -y
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
#pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
pip install cython wheel
CFLAGS="-Wno-error=incompatible-function-pointer-types -O0" pip install lxml
#install lxml
pip install requests lxml tqdm beautifulsoup4
echo "Download from the GitHub mirror. If you cannot download it, you can use the global_install.sh script instead."
curl -o Tomato-Novel-Downloader-Lite.zip "https://ghproxy.net/https://github.com/Dlmily/Tomato-Novel-Downloader-Lite/archive/refs/heads/main.zip" || { echo "error,something went wrong"; exit 1; }
unzip -o -d ~/storage/downloads Tomato-Novel-Downloader-Lite.zip
#unzip
cd ~/storage/downloads/Tomato-Novel-Downloader-Lite-main
sed -i '$ a\alias fq="cd ~/storage/downloads/Tomato-Novel-Downloader-Lite-main && python ./2.py"' ~/.bashrc
#environment variable
python 2.py
