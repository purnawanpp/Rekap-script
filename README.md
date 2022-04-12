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

# Instalasi networkx untuk menjalankan CHARMM General Force Field (CGenFF)/ Installing networkx to run CHARMM General Force Field (CGenFF) #
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

# Instalasi NAMD #
1. Download software NAMD pda link berikut yang terintegrasi dengan CUDA dan Linux https://www.ks.uiuc.edu/Research/namd/cvs/download/741376/NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA.tar.gz
2. Ekstrak file tersebut dengan perintah diterminal: *tar -zxvf NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA.tar.gz*
4. Masuk kedirektori dengan mengetik diterminal: *cd NAMD_Git-2022-04-05_Linux-x86_64-multicore-CUDA*
6. Akses Root pada linux dengan perintah:*sudo su*
8. Copy file eksekusi di bin dengan perintah:*cp namd2 /usr/local/bin*
10. Cek isntalasi dengan perintah: *namd2*

# Instalasi VMD #
1. Download software VMD pda link berikut yang terintegrasi dengan CUDA dan Linux hhttps://www.ks.uiuc.edu/Research/vmd/alpha/vmd-1.9.4a55.bin.LINUXAMD64-CUDA102-OptiX650-OSPRay185-RTXRTRT.opengl.tar.gz
2. Ekstrak file tersebut dengan perintah diterminal: *tar -zxvf vvmd-1.9.4a55.bin.LINUXAMD64-CUDA102-OptiX650-OSPRay185-RTXRTRT.opengl.tar.gz*
4. Masuk kedirektori folder
6. Akses root dengan perintah: *sudo su*
8. Selanjutnya ketik: *./configure LINUXAMD64*
10. ubah directory dengan perintah: *cd src*
12. Selanjutnya jalankan: *make install*

# Tutorial Gromacs dengan CHARMM36 Force Field
1. bahkan hidrogen mengguakan Avogadro simpan menjadi file jz4.mol2 edit file jz4.mol2 dengan text editor ganti ***** menjadi JZ4
2. Jnkan perintah berikut: perl sort_mol2_bonds.pl jz4.mol2 jz4_fix.mol2

# Jalankan perintah berikut
1. conda activate networkx
2. python3 cgenff_charmm2gmx_py3_nx2.py JZ4 jz4_fix.mol2 jz4_fix.str charmm36-mar2019.ff
3. gmx editconf -f jz4_ini.pdb -o jz4.gro
# Perhatian Eror pada ionisasi karena dalam folder charmm36-jul2021.ff CL didefinisikan CLA bisa diganti CL jika diperlukan
1.	gmx pdb2gmx -f protein.pdb -ignh
2.	gmx editconf -f conf.gro -o newbox.gro -bt dodecahedron -d 1.0
3.	gmx solvate -cp newbox.gro -cs spc216.gro -p topol.top -o solv.gro
4.	gmx grompp -f ions.mdp -c solv.gro -p topol.top -o ions.tpr
5.	gmx genion -s ions.tpr -o solv_ions.gro -p topol.top -neutral -conc 0.15
6.	gmx grompp -f nvt.mdp -c em.gro -r em.gro -p topol.top -n index.ndx -o nvt.tpr
7.	gmx mdrun -deffnm nvt &
8.	gmx grompp -f npt.mdp -c nvt.gro -t nvt.cpt -r nvt.gro -p topol.top -n index.ndx -o npt.tpr -maxwarn 1
9.	gmx mdrun -deffnm npt &
10.	gmx grompp -f md.mdp -c npt.gro -t npt.cpt -p topol.top -n index.ndx -o md_0_10.tpr
11.	gmx mdrun -v -s md_0_10.tpr -deffnm md_0_10 &
12.	gmx trjconv -s md_0_10.tpr -f md_0_10.xtc -o md_0_10_center.xtc -center pbc mol -ur compact
13.	gmx trjconv -s md_0_10.tpr -f md_0_10_center.xtc -o start.pdb -dump 0
14.	gmx energy -f em.edr -o minimenergi.xvg
15.	gmx trjconv -s md_0_10.tpr -f md_0_10.xtc -o analisis.xtc -pbc mol -ur compact
16.	xmgrace analisis.xtc

