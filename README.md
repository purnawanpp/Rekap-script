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
1. Download software VMD pda link berikut yang terintegrasi dengan CUDA dan Linux https://www.ks.uiuc.edu/Development/Download/download.cgi?PackageName=NAMD
2. Ekstrak file tersebut dengan perintah diterminal: #tar -zxvf NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA.tar.gz
4. Now change directory to the extracted folder for NAMD by using this command in
5. cd NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA
6. Now, give root access by typing
7. sudo su
8. Finally, in terminal, type
9. cp namd2 /usr/local/bin
10. In this way you can install NAMD in Ubuntu (LINUX)

VMD
1. Download software VMD pda link berikut yang terintegrasi dengan CUDA dan Linux https://www.ks.uiuc.edu/Research/namd/cvs/download/741376/NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA.tar.gz
2. Ekstrak file tersebut dengan perintah diterminal: *tar -zxvf vmd-1.9.4a55.bin.LINUXAMD64-CUDA102-OptiX650-OSPRay185.opengl.tar.gz
4. Now change directory to the extracted folder for VMD by using this command in terminal: cd vmd-1.9.4
6. Now, give root access by typing
7. sudo su
8. Then type
9. ./configure LINUXAMD64
10. Change the directory by using
11. cd src
12. Finally, type
13. make install
