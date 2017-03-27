# ------------------------------------------------------------------------------
# Working with Haskell, Agda and Theorem Provers

cd ${HOME}
mkdir bin

#-------------------------------------------------------------------------------
# Haskell support
sudo -i
yes | dnf remove ghc-base
yes | dnf copr enable petersen/ghc-8.0.2
dnf install ghc -y

ghc --version
cabal --version
exit()
export PATH=${HOME}/bin:${HOME}/.cabal/bin:${PATH}
cabal install cabal-install
cabal install alex
cabal install alex
cabal install agda

# ------------------------------------------------------------------------------
# Prolog support : SWI-Prolog
sudo -i

dnf install \
  autoconf \
  chrpath \
  libunwind \
  freetype-devel \
f  java-1.8.0-openjdk-devel \
  jpackage-utils \
  libICE-devel \
  libjpeg-turbo-devel \
  libSM-devel \
  libX11-devel \
  libXaw-devel \
  libXext-devel \
  libXft-devel \
  libXinerama-devel \
  libXmu-devel \
  libXpm-devel \
  libXrender-devel \
  libXt-devel \
  ncurses-devel \
  openssl-devel \
  pkgconfig \
  readline-devel \
  unixODBC-devel \
  zlib-devel \
  uuid-devel \
  libarchive-devel -y

git clone https://github.com/SWI-Prolog/swipl-devel.git
cd swipl-devel
./prepare
./build

# ------------------------------------------------------------------------------
# Installing the E theorem prover

cd ${HOME}
wget http://wwwlehre.dhbw-stuttgart.de/~sschulz/WORK/E_DOWNLOAD/V_1.9.1/E.tgz
tar -xzf E.tgz
cd E
./configure --bindir=${HOME}/bin
make
make install
cd ${HOME}

# ------------------------------------------------------------------------------
# Installing the Metis theorem prover

sudo dnf install mlton

cd ${HOME}
wget http://www.gilith.com/software/metis/metis.tar.gz
tar xvzf metis.tar.gz
cd metis
make mlton
cd ${HOME}

# ------------------------------------------------------------------------------
# Installing Equinox
cd ${HOME}
git clone https://github.com/nick8325/equinox.git
cd equinox/
./configure

# ------------------------------------------------------------------------------
# Installing the CVC4
dnf install cvc4
# ------------------------------------------------------------------------------

# Installing the  Coq
sudo dnf install coq


# ------------------------------------------------------------------------------
# Installing OnlineATPs

git clone https://github.com/jonaprieto/online-atps ${HOME}/online-atps
cd ${HOME}/online-atps
cabal install --force-reinstalls
cd ${HOME}

# ------------------------------------------------------------------------------
# Installing HLint and shelltestrunner
cabal install hlint
cabal install shelltestrunner


# ------------------------------------------------------------------------------
# Installing Eagda
cabal install cpphs-1.20.2
git clone https://github.com/asr/eagda.git ${HOME}/eagda
cd ${HOME}/eagda
cabal install --only-dependencies --force-reinstalls

# ------------------------------------------------------------------------------
# Installing Apia
git clone http://github.com/asr/apia.git ${HOME}/apia
cd apia/
make install-bin

# ------------------------------------------------------------------------------
# Installing tptp4X

cd ${HOME}/apia
cp tools/tptp4X ${HOME}/bin/
cd ${HOME}

# ------------------------------------------------------------------------------
# Installing TPTP Library
cd ${HOME}
wget http://www.cs.miami.edu/~tptp/TPTP/Distribution/TPTP-v6.4.0.tgz
tar -xzf TPTP-v6.4.0.tgz
cd ${HOME}

# ------------------------------------------------------------------------------
# Cleaning all stuffs

cd ${HOME}
rm -r *.zip
rm -r *.tgz
rm -r *.gz
rm -r *.xz
