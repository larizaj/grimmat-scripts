wget -o atom-rpm https://atom.io/download/rpm
rpm --checksig atom-rpm
sudo dnf install lsb-core-noarch -y
sudo rpm -ivh atom-rpm
rpm -q atom-rpm
rm -f atom-rpm
# $ atom
