mkdir /home/${USER}/opt/netcdf/4.4.1.1/netcdf-fortran
mkdir /home/${USER}/opt/netcdf/4.4.1.1/netcdf-fortran/4.4.4

wget ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-fortran-4.4.4.tar.gz
tar -xvf netcdf-fortran-4.4.4.tar.gz 
rm netcdf-fortran-4.4.4.tar.gz 
cd netcdf-fortran-4.4.4
nethome=/home/${USER}/opt/netcdf/4.4.1.1
export LD_LIBRARY_PATH=${nethome}/lib
sudo chmod u+rx configure
sudo chmod +x configure
./configure --prefix=${nethome}/netcdf-fortran/4.4.4 CPPFLAGS="-I${nethome}/include" LDFLAGS="-L${nethome}/lib" CC='gcc' CXX='g++' F77='gfortran' FC='gfortran' --disable-netcdf-4
make
sudo make install
make check
