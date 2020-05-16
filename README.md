# Docker
Some of the assignments are from [Bret Fisher](https://github.com/BretFisher) <br> 
The docker files and containerization techniques to create images and manage the containers on server.
# Docker
The docker files and containerization techniques to create images and manage the containers on server.

## Docker in Production 
### Limit your Simultaneous Innovation (Scope Fixing)
- Solution you maybe dont need day one:
    - Fully automatic CI/CD
    - Dynamic performance scaling
    - Containering all or nothing
    - Starting with persistant data

## What to focus on First : Dockerfiles
- More important than fancy orchestration
- Its your new build and environment documentation
- Study Dockerfile / ENTRYPOINT of hub Officials
- FROM official distros that are most familier
### Dockerfile maturity Model
- Make it start
- Make it log all things to stdout/stderr
- Make it documented in file
- Make it work for others
- Make it lean
- Make it scale 

## Dockerfile Anti-pattern : Using Latest
- Latest = Image builds will be (dont know thw latest config)
- Problem : Image builds pull from latest
- Solution: Use specific FROM tags
- Problem: Image buils install latest packages
- Solution : Specify version for critical apt-/yum-/apk packages.
### Dockerfile Anti-Pattern :Leaving Default Config
- Problem Not changing app defaults or blindly copying VM vonfig
    -e.g. php.ini, mysql.conf
- Solution : Update default config via ENV, RUN, and ENDPOINT.

## Containers on VM or containers on bare metal
- Try both 
- Stick what you know first
- Do some basic performance testing
- `One thing : If the containers grow rapidly then runnning them on VM makes complicated and you need to start take care about kernel-network scheduling and  network settings `

## OS Linux Distribution / Kernel Matters
- try Ubuntu : ;-)

## Swarm Orchestration 
- Baby Swarm: 1 Node
    - Used on our laptop
- HA Swarm : 3-Node (High Availabilty)
    - Minimum for HA 
    - All managers
    - One node can fail
    - Use when very small budget
    - Pet projects or Test/CI
- Biz Swarm : 5-Node
    - Better high availability
    - All managers
    - Two nodes can fail
    - My minimum for uptime that affects $$$time
- Flexy Swarm : 10+ Nodes
    - 5 dedicated Mangers
    - Workers in DMZ
    - Anyting beyond 5 nodes, stick with 5 managers and rest Workers
    - Control container placement with labels +Constaints
- Swole Swarm : 100+ Nodes
    - 5 dedicaed managers
    - Resize Managers as you grow
    - Multiple Workers subnets on Private / DMZ
    - Control container placement with labels + constraints
## Dont turn Cattle into Pets
- Assume nodes will be replaced
- Assume containers will be recreated
- Docker for (AWS/ AZURE) does this
- LinuxKit and IntraKit

## Reason for mulitiple Swarms

| Bad Reasons  | Good Reasons |
| ------------- | ------------- |
| Different hardware conf  |Learning : Run stuff on test swarm  |
| Different subnets or security groups  | Geographical boundries  |
| Different availabilty zone | Use of Docker API |

## Oustsourcing : For your Consideration
- Image registry
- Logs
- Monitoring and alerting
- Tools/Projects : https://github.com/cncf/landscape

## Last point: Flexibilty
- Realize parts of your tech Stack may change , stay flexible 



