# INSTALLATION

- This script is optimized for UBUNTU 18.04 TLS

## BASH SCRIPTING

<br>

### Execute mode for script
````
chmod +x script.sh
````

### Execute script
````
./script.sh
````

## SOME IMPORTANT COMMANDS

### List containers

````
docker ps -f name=learnig* -q
````

### Delete containers
````
docker ps -f name=learnig* -q | xargs docker rm -f
````
