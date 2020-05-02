#installing new patch of postgres (9.6.1 ==>>  9.6.2)


#first pull the image of postgres 9.6.1
sudo docker pull postgres:9.6.1

#RUN the container with the open port 5432 and POSTGRES_PASSWORD=postgres
sudo docker container run -d --name postgres9.6.1 -v psql-data:/var/lib/postgresql/data -e 
POSTGRES_PASSWORD=postgres -p 5432:5432 postgres:9.6.1

#Check LOGS
sudo docker container logs postgres9.6.1

#while checking logs we'll notice the whole initialization steps of postgres DB
#with passwords and storing the data to the presistent storage

#now stop the runnig container
sudo docker container stop postgres9.6.1

#check the named volume
sudo docker volume ls

#pull the image of postgres 9.6.2
sudo docker pull postgres:9.6.2

#RUN the container with the open port 5432 and POSTGRES_PASSWORD=postgres
sudo docker container run -d --name postgres9.6.2 -v psql-data:/var/lib/postgresql/data -e 
POSTGRES_PASSWORD=postgres -p 5433:5432 postgres:9.6.2

#Check logs of running container
sudo docker container logs postgres9.6.2

#see the difference of logs the new patch is of postgres is successfully updated. 
