This is the baseline code for a crossflow actuator line model for the halfscale turbine ontop of a container with a spoiler.
The model uses the pimpleFoam evaluator and the crossFlowTurbineALSource turbine type in turbinesFOAM.

IMPORTANT NOTE: If you are importing initial conditions and dynamicCode, ONLY run topoSet and pimpleFoam. Running blockMesh or snappyHexMesh will overwrite your initial state

Folder Information:
0.org > This folder currently contains a baseline setup for a basic inflow/outflow, omega turbulence model. HOWEVER YOU SHOULD REPLACE THIS FOLDER.
Running the model from initial conditions with the turbine will be very computationally expensive, as the system is adapting to both the turbine and its natural steady state
Because of this, instead run a steady state model without the turbine (see contSpoilTurb3D-Steady) for a long time (~500 seconds or whatever determined to get to steady state)
Then IMPORT THE FINAL CONDITIONS OF THAT MODEL TO BE YOUR 0.ORG FOLDER FOR THIS MODEL. This will significantly decrease your computational time

Importantly, you MUST ALSO COPY THE "dynamicCode" FOLDER from the steady state model. This will import the actual mesh that can match to your initial conditions 
(otherwise you'll get an error as the processor tries to match initial conditions)

constant > This contains the .stl and .obj of both the spoiler and the container, the turbulence and transport properties, and the airfoil data for the model.
As mentioned before, the turbulence and transport properties should be omega based and the objects should be the exact ones used in the steady state model
Airfoil data is also located here and the tool should already be set for a multiRe model with the NACA-0018 airfoil

system > This runs the code. Important ones to know for changing the qualities of the model are as followed:
blockMesh > the model is currently set to a very low resolution
controlDict > make sure the timesteps and write outputs are as desired. Also make sure the probes are in the place you want them
fvOptions > the parameters for the turbine and airfoils should be correct but can be updated
topoSetDict > the parameters for the turbine and airfoils should be correct but can be updated

