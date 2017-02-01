sudo dnf install gstreamer1-plugins-base gstreamer1-plugins-good gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-plugins-bad-free-extras ffmpeg

sudo dnf install polyml --best
sudo dnf install mlton

sudo dnf install swi-prolog

# metis ATP
cd $HOME
git clone http://github.com/jonaprieto/metis
cd metis/
git status
make init
make mlton

# Eagda
cd $HOME
git clone http://github.com/asr/eagda.git
cd eagda/
make install-bin
cd $HOME

# Apia
cd $HOME
git clone http://github.com/asr/apia.git
cd apia/
make install-bin
cd $HOME

# Online-ATPS
cd $HOME
git clone http://github.com/jonaprieto/online-atps
cd online-atps/
make install-bin
cd $HOME

#TPTP Library
cd $HOME
wget http://www.cs.miami.edu/~tptp/TPTP/Distribution/TPTP-v6.4.0.tgz
tar xf TPTP-v6.4.0.tgz
cd $HOME

#Equinox
cd $HOME
git clone https://github.com/nick8325/equinox.git
cd equinox/
./configure

#CVC4
dnf install cvc4

#Coq
sudo dnf install coq

rm -r *.rpm
rm -r *.zip
rm -r *.tgz
rm -r *.gz
rm -r *.xz
