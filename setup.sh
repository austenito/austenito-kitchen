sudo apt-get update && sudo apt-get -qy install wget git vim make curl build-essential libxml2-dev libxslt-dev

sudo wget -O ruby-install-0.4.3.tar.gz https://github.com/postmodern/ruby-install/archive/v0.4.3.tar.gz
sudo tar -xzvf ruby-install-0.4.3.tar.gz
cd ruby-install-0.4.3/
sudo make install
sudo ruby-install ruby 2.1.2

sudo wget -O chruby-0.3.8.tar.gz https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
sudo tar -xzvf chruby-0.3.8.tar.gz
cd chruby-0.3.8/
sudo make install
echo 'source /usr/local/share/chruby/chruby.sh' >> ~/.bashrc
source ~/.bashrc

sudo rm -fR ruby*

