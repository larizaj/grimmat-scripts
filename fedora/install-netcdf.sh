sudo dnf install hdf5* -y
sudo dnf install gcc* -y
sudo dnf install openmp* -y
sudo dnf install mpi* -y


export FC=gfortran
export F77=gfortran
export CC=gcc
export CXX=g++

wget ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-4.4.1.1.tar.gz  # must check for the available .tar file

tar -xvf netcdf-4.4.1.1.tar.gz 

rm netcdf-4.4.1.1.tar.gz 
cd netcdf-4.4.1.1/
mkdir /home/${USER}/opt/

mkdir /home/${USER}/opt/netcdf
mkdir /home/${USER}/opt/netcdf/4.4.1.1  

./configure --prefix=/home/${USER}/opt/netcdf/4.4.1.1 

sudo dnf install m4

make

sudo make install
sudo make check
