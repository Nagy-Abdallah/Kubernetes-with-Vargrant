# Provision-catDogApp

## Overview
**Here we are deploying the Votting-Application on a k8s cluster provisioned using Vagrant**


### Prerequisite:
- VBox installed 
- Vagrant installed

>   Note: You need a minimum of 16 Gig RAM workstation to run this setup without any issues. 
----------

### Steps to provision infrastructure and run the application:

##### Clone the repo.
`git clone https://github.com/Nagy-Abdallah/Provision-catDogApp.git`

##### Go inside the directory 'Provision-catDogApp' , gire execute permission to 'run.sh' and then run the bash file 'run.sh'.

`cd Provision-catDogApp`

`chmod +x run.sh`

`./run.sh`

###### Wait about 3min untill the application is up then got ahead into this URLs:

[Vote application](http://10.0.0.11:31000) 

[Result application](http://10.0.0.11:31001) 

----------

# Description

### Vagrant file (Cluster envieronment)
This vagrantFile provision a cluster environment contains of 1 Master and 2 workers using kubeadm.
- Master 2 CPU and 4 Gig of Ram. With Private IP 10.0.0.10
- 2 Workers with  1 CPU and 2 Gig of Ram each. With Private IP 10.0.0.11 for node01 and 10.0.0.12 for node02.
  
### Kubrenets Mainfests
There are 5 deployments into this Mainffests:

<img src="/Images/svc.png"  >



With 4 services for internal communication and external.

<img src="/Images/svc.png" >


and a Horizential pod auto scaling min replicas 1 and max 10 based on workload.

<img src="/Images/hpa.png" >

and a secret for Postgresql Database to be encripted.

<img src="/Images/secret.png" >

and a PrisitantVolume and a PrisitantVolumeClaim for Pstgresql DB to presist the Data.

PV
<img src="/Images/pv.png" >
PVC
<img src="/Images/pvc.png" >


**When all pods are up check the application running throw browser**

Vote
<img src="/Images/vote.png" >

Result
<img src="/Images/result.png" >
