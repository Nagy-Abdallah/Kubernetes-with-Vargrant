#! /bin/bash
cd vagrant
echo "VagrantUP"
#vagrant up
vagrant ssh master  << EOF
  ls ;
  git clone https://github.com/Nagy-Abdallah/Provision-catDogApp.git
  ls
  cd Provision-catDogApp
  kubectl create ns vote
  kubectl apply -f k8s-manifests -n vote
  kubectl get pods -n vote
EOF
