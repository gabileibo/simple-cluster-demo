
### Dependencies - MacOS Only #######
## if you don't have docker installed 
brew install docker # docker cli
brew install colima 
colima start --cpu 4 --memory 8 # clusters usually take up a bit of memory
docker ps  # check if docker is running

## If you don't have kubectl 
brew install --cask=google-cloud-sdk
gcloud components install kubectl

# If you don't have kind - for non-mac users follow https://kind.sigs.k8s.io/docs/user/quick-start/
brew install kind 

# Optional - if you don't have k9s
brew install k9s

#####################################

#### From this point on you can run the commands on any OS 
kind create cluster

kubectl cluster-info --context kind-kind

k9s 