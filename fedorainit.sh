dnf update -y
dnf groupinstall "Laboratorio Electrónico" -y
dnf groupinstall "Ingeniería y ciencia" -y
dnf groupinstall "Herramientas y Librerías de Desarrollo C" -y
dnf groupinstall "Fedora Eclipse" -y
dnf groupinstall "Sonido y vídeo" -y
dnf groupinstall "Suite de Diseño" -y
dnf groupinstall "Herramientas de desarrollo" -y

dnf install csh
dnf install texlive* -y
dnf install texstudio -y
dnf install lyx -y
dnf install kile -y
dnf install spyder -y
dnf install R -y
dnf install https://download1.rstudio.org/rstudio-1.0.44-x86_64.rpm -y
dnf copr enable nalimilan/julia -y
dnf install julia -y
dnf upgrade julia -y

dnf update -y
