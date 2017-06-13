dnf update -y
dnf groupinstall "Escritorio Cinnamon" -y
dnf groupinstall "Ingeniería y ciencia" -y
dnf groupinstall "Herramientas y Librerías de Desarrollo C" -y
dnf groupinstall "Fedora Eclipse" -y
dnf groupinstall "Sonido y vídeo" -y
dnf groupinstall "Suite de Diseño" -y
dnf groupinstall "Herramientas de desarrollo" -y
dnf install xterm -y
dnf install cmake -y

dnf install csh -y
dnf install spyder -y
dnf install R -y
dnf install https://download1.rstudio.org/rstudio-1.0.44-x86_64.rpm -y
dnf copr enable nalimilan/julia -y
dnf install julia -y
dnf upgrade julia -y

sudo dnf install git-all -y
sudo dnf install python* -y
sudo dnf install R -y
sudo pip install jupyter
sudo dnf install scala -y

sudo dnf install xclip -y

dnf update -y
