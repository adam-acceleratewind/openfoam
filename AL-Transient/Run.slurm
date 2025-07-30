#!/bin/bash
      
#SBATCH --partition=debug        		# (moves higher up in the queue, but limited to 1 hr walltime and single node, ## is commented out) 
#SBATCH --time=00:10:00           		# walltime limit           
#SBATCH --job-name=ALTurb5Sec		        # name of job              
#SBATCH --nodes=1           			# number of nodes DO CHANGE          
#SBATCH --account=accelerate           		# project allocation          
#SBATCH --mail-user user@acceleratewind.com   	# User's email          
#SBATCH --mail-type BEGIN,END,FAIL    		# Simulation Notification          
#SBATCH --ntasks-per-node=104  			# number of tasks per node DONT CHANGE 
#SBATCH --ntasks=104  				# total number of tasks DO CHANGE
## #SBATCH --qos=high				# sets priority to high (USES 2X AUS)

cd /scratch/user/directoryLoc

ml openfoam/v2406-craympich-gcc

chmod +x ./Allrun
./Allrun

echo "------ End of the job ------"

