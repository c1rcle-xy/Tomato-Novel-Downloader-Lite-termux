termux-setup-storage
apt update && apt upgrade
#pip config set global.index-url https://mirrors.aliyun.com/pypi/simple
pkg install python libxml2 libxslt pkg-config openssl -y
#pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
pip install cython wheel
CFLAGS="-Wno-error=incompatible-function-pointer-types -O0" pip install lxml
#install lxml
pip install requests lxml tqdm beautifulsoup4 fake-useragent
echo "Download from the GitHub. If you cannot download it, you can use the install.sh script instead."
curl -o Tomato-Novel-Downloader-Lite.zip "https://github.com/Dlmily/Tomato-Novel-Downloader-Lite/archive/refs/heads/main.zip" || { echo "error,something went wrong"; exit 1; }
unzip -o -d ~/storage/downloads Tomato-Novel-Downloader-Lite.zip
#unzip
cd ~/storage/downloads/Tomato-Novel-Downloader-Lite-main
sed -i '$ a\alias tndl="cd ~/storage/downloads/Tomato-Novel-Downloader-Lite-main && python ./2.py"' ~/.bashrc
#environment variable
python 2.py
