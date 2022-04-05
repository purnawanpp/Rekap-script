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
1. First of all download the latest version of NAMD for your system. Since I use 64 bit Ubuntu, I will download the latest NAMD version from
2. Then extract the contents of the folder in your current directory, in my case NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA.tar.gz by using the command
3. tar -zxvf NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDAtar.gz
4. Now change directory to the extracted folder for NAMD by using this command in
5. cd NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA
6. Now, give root access by typing
7. sudo su
8. Finally, in terminal, type
9. cp namd2 /usr/local/bin
10. In this way you can install NAMD in Ubuntu (LINUX)

VMD
1. Download the latest 64 bit version of VMD for LINUX from
2. Extract the contents of the folder in your current directory, in my case vmd-1.9.4a55.bin.LINUXAMD64-CUDA102-OptiX650-OSPRay185.opengl.tar.gz by using the command
3, tar -zxvf vmd-1.9.4a55.bin.LINUXAMD64-CUDA102-OptiX650-OSPRay185.opengl.tar.gz
4. Now change directory to the extracted folder for VMD by using this command in terminal
5. cd vmd-1.9.4
6. Now, give root access by typing
7. sudo su
8. Then type
9. ./configure LINUXAMD64
10. Change the directory by using
11. cd src
12. Finally, type
13. make install
