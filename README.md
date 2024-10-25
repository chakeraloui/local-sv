# local-sv
prepare sv to work locally
Getting Started

Prereqs:

make sure you have java v1.8 or higher

#install Docker on ubuntu 22.04

##Setup the repository

```sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

  ##Install Docker Engine

```  
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

#Executing the Docker Command Without Sudo

By default, the docker command can only be run the root user or by a user in the docker group, which is automatically created during Docker’s installation process. If you want to avoid typing sudo whenever you run the docker command, add your username to the docker group:

```
sudo usermod -aG docker ${USER}
```

If you need to add a user to the docker group that you’re not logged in as, declare that username explicitly using

```

sudo usermod -aG docker username

```





clone gatk-sv to  your home directory
https://github.com/broadinstitute/gatk-sv.git

Clone this repo to  your home directory 
please run:


docker image and wdl script for a simple cromwell / firecloud workflow

install docker
download cromwell
