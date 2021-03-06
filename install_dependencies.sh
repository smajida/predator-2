#!/usr/bin/sh

sudo mkdir -p /tmp

cd /tmp
echo 'Installing g++'
sudo apt-get install -y g++

echo 'Installing curl first'
sudo apt-get install -y curl

echo 'Downloading & installing python development headers and python-pip'
sudo apt-get install -y python-dev build-essential python-pip

echo 'Downloading & installing distribute'
sudo curl http://python-distribute.org/distribute_setup.py | sudo python

echo 'Downloading libevent'
wget http://cloud.github.com/downloads/libevent/libevent/libevent-2.0.12-stable.tar.gz
echo 'installing libevent'
tar -C /tmp -xzf /tmp/libevent-2.0.12-stable.tar.gz
cd /tmp/libevent-2.0.12-stable
./configure
make
sudo make install

echo 'Downloading & installing gevent'
sudo pip install gevent

echo 'Downloading gunicorn'
sudo pip install gunicorn

cd /tmp
echo 'Downloading PCRE library'
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.30.tar.gz
echo 'Installing PCRE library'
tar -C /tmp -xzf /tmp/pcre-8.30.tar.gz
cd /tmp/pcre-8.30
./configure
make
sudo make install

cd /tmp
echo 'Downloading & installing nginx'
sudo apt-get install -y nginx

cd /tmp
echo 'Installing libtool, autoconf, automake'
sudo apt-get install -y libtool autoconf automake

echo 'Installing  uuid-dev'
sudo apt-get install -y uuid-dev

echo 'Downloading zeromq'
wget http://download.zeromq.org/zeromq-2.1.11.tar.gz
echo 'Installing zeromq'
tar -C /tmp -xzf /tmp/zeromq-2.1.11.tar.gz
cd /tmp/zeromq-2.1.11
./configure
make
sudo make install
sudo ldconfig

echo 'Downloading pyzmq'
sudo pip install pyzmq

cd /tmp
echo 'Downloading & installing zlib dev packages'
sudo apt-get install -y zlib1g-dev

echo 'Downloading libpng'
wget http://space.dl.sourceforge.net/project/libpng/libpng15/older-releases/1.5.4/libpng-1.5.4.tar.gz
echo 'Installing libpng'
tar -C /tmp -xzf /tmp/libpng-1.5.4.tar.gz
cd /tmp/libpng-1.5.4
./configure
make
sudo make install

cd /tmp
echo 'Downloading font-config'
sudo apt-get install -y fontconfig fontconfig-dev

echo 'Downloading libpoppler'
wget http://poppler.freedesktop.org/poppler-0.18.4.tar.gz
echo 'Installing libpoppler'
tar -C /tmp -xzf /tmp/poppler-0.18.4.tar.gz
cd /tmp/poppler-0.18.4
./configure
make
sudo make install

cd /tmp
echo 'Downloading mongodb'
wget http://downloads-distro.mongodb.org/repo/ubuntu-upstart/dists/dist/10gen/binary-i386/mongodb-10gen_2.0.2_i386.deb
echo 'Installing mongodb'
sudo dpkg -i /tmp/mongodb-10gen_2.0.2_i386.deb

echo 'Downloading pymongo'
sudo pip install pymongo

echo 'Downloading mongokit'
sudo pip install mongokit

echo 'Downloading & installing gevent_zeromq'
sudo pip install gevent-zeromq

echo 'Downloading flask'
sudo pip install flask

echo 'Downloading werkzeug'
sudo pip install werkzeug

echo 'Downloading jinja2'
sudo pip install jinja2

echo 'Downloading & installing mercurial'
sudo apt-get install -y mercurial

echo 'Downloading wtform-fork'
sudo pip install hg+https://bitbucket.org/kailashbuki/wtforms-fork

echo 'Downloading and installing runit'
sudo apt-get install -y runit