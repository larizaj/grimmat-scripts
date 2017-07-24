cd ~

wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest

sudo dpkg -i mendeleydesktop-latest

# Although memdeleydesktop package has a source with an http:// address,
# it will try connecting to https://.
# To fix this potential error when trying "apt-get update" after package
# installation:
apt-get install apt-transport-https
