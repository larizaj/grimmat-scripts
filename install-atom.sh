wget https://atom.io/download/rpm
rpm --checksig rpm
sudo dnf install lsb-core-noarch -y
sudo rpm -ivh rpm
rpm -q rpm
# $ atom
