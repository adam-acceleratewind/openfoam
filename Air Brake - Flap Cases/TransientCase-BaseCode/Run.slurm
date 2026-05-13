#!/bin/bash
      
## #SBATCH --partition=debug        		# (moves higher up in the queue, but limited to 1 hr walltime and single node, ## is commented out) 
#SBATCH --time=15:00:00           		# walltime limit           
#SBATCH --job-name=0FlapTransient			        # name of job              
#SBATCH --nodes=1           			# number of nodes DO CHANGE          
#SBATCH --account=accelerate           		# project allocation          
#SBATCH --mail-user ike@acceleratewind.com   	# User's email          
#SBATCH --mail-type BEGIN,END,FAIL    		# Simulation Notification          
#SBATCH --ntasks-per-node=25  			# number of tasks per node DONT CHANGE 
#SBATCH --ntasks=25  				# total number of tasks DO CHANGE
## #SBATCH --qos=standby  				# qos

cd /scratch/iwalker/FlapCases-OpenFOAM/0FlapTransient

ml openfoam/v2406-craympich-gcc

./Postrun

echo "------ End of the job ------"

