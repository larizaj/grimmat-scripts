cd ${HOME}
cd eagda
git pull origin master
make install-bin
cd ${HOME}

# --------------------------------------
# tptp2X Utility
#cd ${HOME}/TPTP-v6.4.0/Scripts/
#csh ./tptp2T_install
#cd ${HOME}/TPTP-v6.4.0/TPTP2X/
#csh ./tptp2X_install

# --------------------------------------
cd apia
git pull origin master
make install-bin
make tests
cd ${HOME}
cd online-atps
git pull origin master
make install-bin
make tests
