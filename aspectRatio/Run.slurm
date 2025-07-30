#!/bin/bash
      
## #SBATCH --partition=debug        		# (moves higher up in the queue, but limited to 1 hr walltime and single node, ## is commented out) 
#SBATCH --time=0:30:00           		# walltime limit | should change > cases can take ~1-4 hours depending on the size. Run a debug case to get a time estimate first          
#SBATCH --job-name=aspectRatio		        # name of job | should change > do something that will make your FBI agent laugh, like "FART" for Fast Aspect Ratio Test             
#SBATCH --nodes=1  	  			# number of nodes | can change > Want ~100,000 cells for each processor          
#SBATCH --account=accelerate           		# project allocation          
#SBATCH --mail-user user@acceleratewind.com   	# User's email | should change > insert email         
#SBATCH --mail-type BEGIN,END,FAIL    		# Simulation Notification | can change > depending on how much you want email spam        
#SBATCH --ntasks-per-node=104  			# number of tasks per node | don't change > set for the Kestrel system
#SBATCH --ntasks=104  				# total number of tasks | can change > but don't? Not actually sure you can change
## #SBATCH --qos=high				# sets priority to high (USES 2X AUS) | can change > most cases won't need it though and use sparingly if at all. Can change to "standby" to use no AUs

##Change based on directory setup
cd /scratch/user/folder/case

ml openfoam/v2406-craympich-gcc

chmod +x ./Allclean
./Allclean

chmod +x ./Allrun
./Allrun


echo "------ End of the job ------"

