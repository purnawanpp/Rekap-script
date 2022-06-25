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

# Instalasi networkx untuk menjalankan CHARMM General Force Field (CGenFF)/ Installing networkx to run CHARMM General Force Field (CGenFF)-Cara 1 #
1.	conda activate
2.	conda create -n networkx
3.	conda activate networkx
4.	pip3 install --upgrade pip
5.	sudo pip uninstall networkx
6.	sudo add-apt-repository ppa:deadsnakes/ppa
7.	sudo apt-get update
8.	sudo apt-get install python3.7
9.	pip install networkx==2.3
10.	conda install -c anaconda numpy 
11.	python3 cgenff_charmm2gmx_py3_nx2.py JZ4 jz4_fix.mol2 jz4_fix.str charmm36-jul2021.ff


# Instalasi networkx untuk menjalankan CHARMM General Force Field (CGenFF)-Cara 2
1. sudo apt-get install python3.6
2. sudo pip uninstall network
3. sudo pip install networkx==2.3
4. sudo pip install numpy
5. pip uninstall networkx
6. pip install networkx==2.3

# Instalasi Gnina (Pastikan sudah install CUDA)
1. sudo apt-get install build-essential cmake git wget libboost-all-dev libeigen3-dev libgoogle-glog-dev libprotobuf-dev protobuf-compiler libhdf5-dev libatlas-base-dev python3-dev librdkit-dev python3-numpy python3-pip python3-pytest
2. git clone https://github.com/gnina/gnina.git
3. cd gnina
4. mkdir build
5. cd build
6. cmake ..
7. make
8. make install
9. sudo su
10. git config --global --add safe.directory /home/yss/Programs/gnina/build/libmolgrid-prefix/src/libmolgrid

# Instalasi NAMD #
1. Download software NAMD pda link berikut yang terintegrasi dengan CUDA dan Linux https://www.ks.uiuc.edu/Research/namd/cvs/download/741376/NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA.tar.gz
2. Ekstrak file tersebut dengan perintah diterminal: *tar -zxvf NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA.tar.gz*
4. Masuk kedirektori dengan mengetik diterminal: *cd NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA*
6. Akses Root pada linux dengan perintah:*sudo su*
8. Copy file eksekusi di bin dengan perintah:*cp namd2 /usr/local/bin*
10. Cek isntalasi dengan perintah: *namd2*

# Instalasi VMD #
1. Download software VMD pda link berikut: https://www.ks.uiuc.edu/Development/Download/download.cgi?UserID=&AccessCode=&ArchiveID=1649
2. Ekstrak file tersebut dengan perintah diterminal: *tar -zxvf vmd-1.9.4a55.bin.LINUXAMD64-CUDA102-OptiX650-OSPRay185-RTXRTRT.opengl.tar.gz*
4. Masuk kedirektori folder
6. Akses root dengan perintah: *sudo su*
8. Selanjutnya ketik: *./configure LINUXAMD64*
10. ubah directory dengan perintah: *cd src*
12. Selanjutnya jalankan: *make install*

# Gromacs dengan AMBER FF14SB Force Field
1. Download dan ekstrak file berikut https://github.com/purnawanpp/Rekap-script/blob/main/amber14sb_parmbsc1.ff.zip

# Gromacs dengan Force Field OPLS
1. Download dan ekstrak file berikut https://github.com/purnawanpp/Rekap-script/blob/main/GMX_OPLSAAM.zip

# Tutorial Gromacs dengan CHARMM36 Force Field
1. Tambahkan hidrogen dengan menggunakan Chimera UCSF 
2. Jnkan perintah berikut: perl sort_mol2_bonds.pl jz4.mol2 jz4_fix.mol2

# Jalankan perintah berikut
1. conda activate networkx
2. python3 cgenff_charmm2gmx_py3_nx2.py JZ4 jz4_fix.mol2 jz4_fix.str charmm36-mar2019.ff
3. gmx editconf -f jz4_ini.pdb -o jz4.gro

# Docking dengan Gnina (pastikan sudah install openbabel dan vina_split yang bisa dieksekusi diterminal)
1. gnina -r Protein.pdb -l Ligand.pdb --autobox_ligand Ligand.pdb -o docked.sdf --seed 0 > hasil.txt
2. obrms -firstonly Ligand.pdb docked.sdf > RMSD.txt
3. obabel docked.sdf -O docked.pdbqt
4. vina_split --input docked.pdbqt

# Semua Script Amber pada link berikut 
1. https://github.com/purnawanpp/Rekap-script/blob/main/catatan_amber
2. https://github.com/purnawanpp/Rekap-script/blob/main/Input_file_amber.zip

# Instalasi Cmake
1. sudo apt install libssl-dev
2. sudo apt install cmake

# Instalasi AMBER22
1. sudo apt -y update
apt -y install tcsh make \
               gcc gfortran \
               flex bison patch bc wget \
               xorg-dev libz-dev libbz2-dev 
2. Ekstrak filenya kedalam folder yang sama
3. mkdir build
4. cd build
5. sudo su
6. ./run_cmake
7. make install
8. cmake ../ \
    -DCMAKE_INSTALL_PREFIX=~/Software/Amber22_cuda \
    -DCOMPILER=GNU  \
    -DMPI=FALSE -DCUDA=TRUE -DINSTALL_TESTS=TRUE \
    -DDOWNLOAD_MINICONDA=TRUE -DMINICONDA_USE_PY3=TRUE
9. make install -j 4 
10. Tes Gpu dengan source ~/Software/Amber20_cuda/amber.sh \
cd ~/Software/Amber20_cuda \
make test.cuda.serial \
make test.serial \


