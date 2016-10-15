# eth_node
Dockerfile d'un noeud ethereum - fdesmier

##Télécharger le dockerfile

##créer l'image
docker build -t eth_node_img /your/folder/Dockerfile

##créer le container en tache de fond
docker run -d -p 30303:30303 -v /your/blockchain/path:/root --name eth_node_ctn eth_node_img

##démarrer le container, qui se sera surement arreté tout seul
docker start eth_node_ctn

##ouvre une console sur le container
docker exec -ti eth_node_ctn /bin/bash

##dans le container, démarrer geth (on redirige la log relou)
geth --mine console 2>> /root/eth.log

##on est désormais dans la console geth, la synchro va se lancer et durer longtemps
pour s'amuser dedans (créer son compte...) : http://www.bortzmeyer.org/ethereum.html
