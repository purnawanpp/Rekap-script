# Kumpulan Script Computational Chemistry
# RMSF Calculation Using NAMD with spesific ligand namely PG4 in protein 6pib #
1. Running in VMD TkConsole
2. source rmsfPG4.tcl

# Pembuatan Environment di Conda #
1. conda create -n xxxx
2. conda activate xxxx
3. conda install numpy
4. conda install pip
5. pip install networkx==2.3

# Menghapus Environment di Conda #
1. Kembali ke posisi base
2. conda env list 
3. conda env remove --name xxxx


# Instalasi VMD dan NAMD #
First of all download the latest version of NAMD for your system. Since I use 64 bit Ubuntu, I will download the latest NAMD version from
Then extract the contents of the folder in your current directory, in my case NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA.tar.gz by using the command
tar -zxvf NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDAtar.gz
Now change directory to the extracted folder for NAMD by using this command in
cd NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA
Now, give root access by typing
sudo su
Finally, in terminal, type
cp namd2 /usr/local/bin
In this way you can install NAMD in Ubuntu (LINUX)

VMD
Download the latest 64 bit version of VMD for LINUX from
Extract the contents of the folder in your current directory, in my case vmd-1.9.2.bin.LINUXAMD64-RHEL5.opengl.tar.gz by using the command
tar -zxvf vmd-1.9.2.bin.LINUXAMD64-RHEL5.opengl.tar.gz
Now change directory to the extracted folder for VMD by using this command in terminal
cd vmd-1.9.2
Now, give root access by typing
sudo su
Then type
./configure LINUXAMD64
Change the directory by using
cd src
Finally, type
make install
