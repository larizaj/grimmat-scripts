cd $HOME
cd eagda
git pull origin master
make install-bin
cd $HOME
cd apia
git pull origin master
make install-bin
make tests
cd $HOME
cd online-atps
git pull origin master
make install-bin
make tests
