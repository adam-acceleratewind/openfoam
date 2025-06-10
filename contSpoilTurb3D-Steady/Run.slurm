#!/bin/bash
      
## #SBATCH --partition=debug        		# (moves higher up in the queue, but limited to 1 hr walltime and single node, ## is commented out) 
#SBATCH --time=4:00:00           		# walltime limit           
#SBATCH --job-name=cs3d-meshH-pre	        # name of job              
#SBATCH --nodes=1           			# number of nodes DO CHANGE          
#SBATCH --account=accelerate           		# project allocation          
#SBATCH --mail-user adam@acceleratewind.com   	# User's email          
#SBATCH --mail-type BEGIN,END,FAIL    		# Simulation Notification          
#SBATCH --ntasks-per-node=104  			# number of tasks per node DONT CHANGE 
#SBATCH --ntasks=104  				# total number of tasks DO CHANGE

cd /scratch/abennett/contSpoil3D/MeshH

ml openfoam/v2406-craympich-gcc

./Allclean

./Prerun

## ./Postrun

echo "------ End of the job ------"

