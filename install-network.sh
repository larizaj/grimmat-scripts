sudo dnf update -y
sudo dnf install git-all -y
sudo dnf install python* -y
sudo dnf install R -y
sudo pip install jupyter
sudo dnf install scala -y





# Instalando Gephi

wget https://github.com/gephi/gephi/releases/download/v0.9.1/gephi-0.9.1-linux.tar.gz
tar -xzvf gephi-0.9.1-linux.tar.gz
rm gephi-0.9.1-linux.tar.gz
cd gephi-0.9.1/

chmod +x bin/gephi
./bin/gephi
wget https://gephi.org/images/badge/logo_about_2.png

# Creando Icono y acceso para Gephi
echo "[Desktop Entry]" >> Gephi.desktop
echo "Comment=Gephi Launcher" >> Gephi.desktop
echo "Terminal=false" >> Gephi.desktop
echo "Name=Gephi" >> Gephi.desktop
echo "Exec=/home/"${USER}"/gephi-0.9.1/bin/gephi" >> Gephi.desktop
echo "Type=Application" >> Gephi.desktop
echo "Icon=/home/"${USER}"/gephi-0.9.1/logo_about_2.png" >> Gephi.desktop

chmod +x Gephi.desktop
mv Gephi.desktop /home/${USER}/Escritorio



# Instalando Spark 
cd ..
wget http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz
tar xvf spark-2.1.0-bin-hadoop2.7.tgz
rm  spark-2.1.0-bin-hadoop2.7.tgz
sudo mv spark-2.1.0-bin-hadoop2.7 /usr/local/spark
echo "export PATH=\$PATH:/usr/local/spark/bin" >> .bashrc
source ~/.bashrc

# Instalando Neo4j

wget https://neo4j.com/artifact.php?name=neo4j-community-3.1.1-unix.tar.gz
tar -xf artifact.php\?name\=neo4j-community-3.1.1-unix.tar.gz
rm artifact.php\?name\=neo4j-community-3.1.1-unix.tar.gz
echo "export PATH=\$PATH:/home/\${USER}/neo4j-community-3.1.1/bin" >> .bashrc
source ~/.bashrc
