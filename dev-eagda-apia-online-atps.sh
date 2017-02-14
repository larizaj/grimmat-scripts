# -------------------------------------
# -- eagda

cd $HOME}
cd eagda
git pull origin master
make install-bin
cd $HOME

# --------------------------------------
# -- TPTP

# tptp2X Utility
#cd ${HOME}/TPTP-v6.4.0/Scripts/
#csh ./tptp2T_install
#cd ${HOME}/TPTP-v6.4.0/TPTP2X/
#csh ./tptp2X_install

# --------------------------------------
# -- Apia
cd apia
git checkout master
git checkout -f
git pull origin master
make install-bin
make tests

# -------------------------------------
# -- online-atps
cd $HOME
cd online-atps
git pull origin master
make install-bin
make tests
