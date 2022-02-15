#Calculation RMSD and RMSF with selected ligand in PDB 6PIB namely PG4

mol new  step3_input.pdb type pdb
mol addfile step5_production.dcd type dcd first 0 last -1 step 1 waitfor all

#resid 3975 to 4067 are number in ligand in step3_input.pdb

#calculation of RMSF of CA atom using superposition
#works when pdb and dcd files are preloaded using GUI(no psf #needed)  
set num_frames [molinfo top get numframes]
set kk [expr $num_frames - 1]
set a [atomselect top "resid 3975 to 4067"]
set c [atomselect top "resid 3975 to 4067" frame $kk]
 for {set i 0} {$i<$num_frames} {incr i} {
 $a frame $i
 $a move [measure fit $a $c]
 }
set outfile [open "rmsf_PG4.dat" "w"]
puts $outfile "Residue \t RMSF"
for {set i 0} {$i <  [$a num] } {incr i} {
	set rmsf [measure rmsf $a first 1 last $kk step 10]
  	puts $outfile "[expr {$i+1}] \t [lindex $rmsf $i]"
  }
close $outfile