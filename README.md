# Kumpulan Script Computational Chemistry

# Installation Conda
1. Download miniconda 
2. bash Miniconda3-latest-Linux-x86_64.sh
3. Make sure conda is already in the path with: nano ~/.bashrc
4. Restart terminal

# Installation  Acpype
1. conda install -c conda-forge acpype
2. conda activate
3. acpype

# Installation gmx_MMPBSA
1. sudo apt install git
2. conda update conda
3. conda create -n gmxMMPBSA python=3.9 -y -q
4. conda activate gmxMMPBSA
5. conda install -c conda-forge mpi4py=3.1.3 ambertools=21.12 compilers -y -q
6. python -m pip install git+https://github.com/Valdes-Tresanco-MS/ParmEd.git@v3.4
7. python -m pip install pyqt5
8. python -m pip install gmx_MMPBSA
9. python -m pip install gmx_MMPBSA -U
# Pemisahan Receptor dan Ligand menggunakan Terminal
1. grep "JZ4" 3htb.pdb > ligand.pdb
2. grep "ATOM" 3htb.pdb > protein.pdb
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
1. Install conda python version 3.7 : https://repo.anaconda.com/miniconda/Miniconda3-py37_4.12.0-Linux-x86_64.sh
2. make sure it says base
3. conda install -c anaconda numpy
4. pip install networkx==2.3
5. run the following command: python cgenff_charmm2gmx_py3_nx2.py JZ4 jz4_fix.mol2 jz4.str charmm36-mar2019.ff


# Instalasi networkx untuk menjalankan CHARMM General Force Field (CGenFF)-Cara 2
1. conda create -n cgenff python=3.7 -y -q
2. conda activate cgenff
3. conda install -c anaconda numpy
4. pip install networkx==2.3
5. python cgenff_charmm2gmx_py3_nx2.py JZ4 jz4_fix.mol2 jz4.str charmm36-mar2019.ff

# Instalasi Gnina (Pastikan sudah install CUDA) untuk ubuntu 20.04, jika eror install versi dan dependesinya via docker
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
1. Download software NAMD pda link berikut yang terintegrasi dengan CUDA dan Linux https://www.ks.uiuc.edu/Development/Download/download.cgi?PackageName=NAMD
2. Ekstrak file tersebut dengan perintah diterminal: *tar -zxvf xxxx.tar.gz*
4. Masuk kedirektori dengan mengetik diterminal: *cd xxx*
6. Akses Root pada linux dengan perintah:*sudo su*
8. Copy file eksekusi di bin dengan perintah:*cp namd3 /usr/local/bin*
10. Cek isntalasi dengan perintah: *namd3*

# Instalasi VMD #
1. Download software VMD pda link berikut: https://www.ks.uiuc.edu/Development/Download/download.cgi?UserID=&AccessCode=&ArchiveID=1649
2. Ekstrak file tersebut dengan perintah diterminal: *tar -zxvf vmd-1.9.4a55.bin.LINUXAMD64-CUDA102-OptiX650-OSPRay185-RTXRTRT.opengl.tar.gz*
4. Masuk kedirektori folder
5. Selanjutnya ketik: *./configure*
6. ubah directory dengan perintah: *cd src*
7. Selanjutnya jalankan: *sudo make install*

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
5. obabel docked_ligand_1.pdbqt -O docked_ligand_1.pdb

# Semua Script Amber pada link berikut 
1. https://github.com/purnawanpp/Rekap-script/blob/main/catatan_amber
2. https://github.com/purnawanpp/Rekap-script/blob/main/Input_file_amber.zip

# Instalasi Cmake
1. sudo apt install libssl-dev
2. sudo apt install cmake

# OPSI-1- Instalasi AMBER22, memakai cuda 11.6, gcc dan g++ versi 9 dan cmake 3.25.0 dan LUBUNTU 20.04
1. sudo apt install bc csh flex xorg-dev zlib1g-dev build-essential \
    libbz2-dev patch cmake bison gfortran python
2. Ekstrak filenya kedalam folder yang sama
3. mkdir build
4. cd build
5. Edit file run_cmake pada bagian -DCUDA=TRUE Untuk menjalankan CUDAnya#  Assume this is Linux:

  cmake $AMBER_PREFIX/amber22_src \
    -DCMAKE_INSTALL_PREFIX=$AMBER_PREFIX/amber22 \
    -DCOMPILER=GNU  \
    -DMPI=FALSE -DCUDA=FALSE -DINSTALL_TESTS=TRUE \
    -DDOWNLOAD_MINICONDA=TRUE \
    2>&1 | tee  cmake.log
    
    menjadi 
   cmake $AMBER_PREFIX/amber22_src \
    -DCMAKE_INSTALL_PREFIX=$AMBER_PREFIX/amber22 \
    -DCOMPILER=GNU  \
    -DMPI=FALSE -DCUDA=TRUE -DINSTALL_TESTS=TRUE \
    -DDOWNLOAD_MINICONDA=TRUE \
    2>&1 | tee  cmake.log
    
6. ./run_cmake
7. Jika terjadi eror saat insatalasi miniconda buka file CMakeFiles/miniconda/download/Miniconda3-latest-Linux-x86_64.sh buka di text editor terus ganti #/bin/sh menjadi #/bin/bash.
8. make install -j 4
10. Tes Gpu dengan source: ~/Amber22_cuda/amber.sh \
cd ~/Amber22_cuda \
make test.cuda.serial \
make test.serial \

# OPSI-2- Instalasi AMBER22, memakai cuda 11.6, gcc dan g++ versi 9 dan cmake 3.23.2 dan ubuntu 20.04
1. sudo apt install bc csh flex xorg-dev zlib1g-dev build-essential \
    libbz2-dev patch cmake bison gfortran python
2. Ekstrak filenya kedalam folder yang sama
3. mkdir build
4. cd build
5. ./run_cmake
6. Jika terjadi eror saat insatalasi miniconda buka file CMakeFiles/miniconda/download/Miniconda3-latest-Linux-x86_64.sh buka di text editor terus ganti #/bin/sh menjadi #/bin/bash.
7. make install
8. cmake ../ \
    -DCMAKE_INSTALL_PREFIX=~/Software/Amber22_cuda \
    -DCOMPILER=GNU  \
    -DMPI=FALSE -DCUDA=TRUE -DINSTALL_TESTS=TRUE \
    -DDOWNLOAD_MINICONDA=TRUE -DMINICONDA_USE_PY3=TRUE
9. make install -j 4 
10. Tes Gpu dengan source ~/Amber22_cuda/amber.sh \
cd ~/Amber22_cuda \
make test.cuda.serial \
make test.serial \

# Menjalankan Autodock di GPU (adgpu)
1. Install Cuda terlebih dahulu tutorialnya  ada divideo ini: https://www.youtube.com/watch?v=snnej7icK_Y&ab_channel=PurnawanPontanaPutra
2. Download adgpu disini: https://github.com/ccsb-scripps/AutoDock-GPU/releases/download/v1.5.3/adgpu-v1.5.3_linux_ocl_128wi 
3. Rename file tersebut menjadi adgpu
4. Buka terminal lalu: chmod +x adgpu
5. Buatkan path dengan perintah: nano ~/.bashrc (pelajari cara pembuatan path di youtube/google)
6. Jalankan docking dengan perintah: adgpu --ffile 4ieh_protein.maps.fld --lfile 4ieh_ligand.pdbqt --nrun 100

# Instalasi Vina-GPU
1. install cuda
2. Install open cl nvidia dengan perintah : sudo apt-get install -y nvidia-opencl-dev
3. install clinfo dengan perintah: sudo apt-get install clinfo
4. make clean
5. make source
6. Buatkan path
7. rename Vina-GPU.exe menjadi vinagpu
8. jalankan dengan perintah: vinagpu --config 2bm2_config.txt

# Masuk Gamess-us NVIDIA Gpu
1. docker run -it nvcr.io/hpc/gamess:17.09-r2-libcchem
2. Mengetahi id docker: docker ps
3. Masuk di spesifik id docker: docker exec -it 2f89329e4907 bash

# Memperbesar font pada tkconsule
1. Jalankan perintah berikut: tkcon font calibri 12

# Menjalankan Gnina, open babel dan XTB
1. obabel drug.pdb -O drug.xyz -h
2. Tambahkan hidrogen secara manual dengan chimera simpan dengan nama drug_H.pdb
3. obabel drug_H.pdb -O drug_H.xyz
4. xtb drug_H.xyz --opt
5. obabel xtbopt.xyz -O drug_dock.pdb 
6. gnina -r rec.pdb -l lig.pdb --autobox_ligand lig.pdb -o docked.sdf --seed 0 > hasil.txt
7. gnina -r rec.pdb -l drug_dock.pdb --autobox_ligand lig.pdb -o docked.sdf --seed 0 > hasil.txt

# Preparasi reseptor dan ligand pada charmmgui
1. grep ATOM complex.pdb > rec.pdb
2. grep CODE_LIGAND complex.pdb > lig.pdb
3. cat rec.pdb lig.pdb > hasil.pdb


