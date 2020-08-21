import docker

# To talk to a Docker daemon, you first need to instantiate a client.
client = docker.from_env()

# creating the httpd container : 
port_mapping ={
    '80/tcp':80
}
client.containers.run("httpd",ports=port_mapping,detach=True)

# creating the nginx container : 
port_mapping ={
    '81/tcp':81
}
client.containers.run("nginx",ports=port_mapping,detach=True)

# creating the mysql container : 
port_mapping ={
    '3306/tcp':3306
}
env_var={
    "MYSQL_RANDOM_PASSWORD":True
}
client.containers.run("mysql",ports=port_mapping,enviroment=env_var,detach=True)
print(client.containers.list())