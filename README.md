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
1. Download software NAMD pda link berikut yang terintegrasi dengan CUDA dan Linux https://www.ks.uiuc.edu/Research/namd/cvs/download/741376/NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA.tar.gz
2. Ekstrak file tersebut dengan perintah diterminal: *tar -zxvf NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA.tar.gz
4. Masuk kedirektori dengan mengetik diterminal: *cd NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA
6. Akses Root pada linux dengan perintah:*sudo su
8. Copy file eksekusi di bin dengan perintah:*cp namd2 /usr/local/bin
10. Cek isntalasi dengan perintah: *namd2

VMD
1. Download software VMD pda link berikut yang terintegrasi dengan CUDA dan Linux hhttps://www.ks.uiuc.edu/Research/vmd/alpha/vmd-1.9.4a55.bin.LINUXAMD64-CUDA102-OptiX650-OSPRay185-RTXRTRT.opengl.tar.gz
2. Ekstrak file tersebut dengan perintah diterminal: *tar -zxvf vvmd-1.9.4a55.bin.LINUXAMD64-CUDA102-OptiX650-OSPRay185-RTXRTRT.opengl.tar.gz
4. Masuk kedirektori folder
6. Akses root dengan perintah: *sudo su
8. Selanjutnya ketik: *./configure LINUXAMD64
10. ubah directory dengan perintah
11. cd src
12. Selanjutnya jalankan: *make install
