#! /bin/bash
echo "changing to vagrant folder"
cd vagrant
echo "RunningVagrantUP"
vagrant up
vagrant ssh master  << EOF    #startting from here will run inside the Master-node
  echo "inside Master-Node"
  echo "running git clone"
  git clone https://github.com/Nagy-Abdallah/Provision-catDogApp.git 
  echo "listing "
  ls
  echo "changing to Provision-catDogApp folder"
  cd Provision-catDogApp
  echo "Applying the application manifests files from the cloned repo"
  kubectl create ns vote
  kubectl apply -f k8s-manifests -n vote
  kubectl get pods -n vote
EOF
