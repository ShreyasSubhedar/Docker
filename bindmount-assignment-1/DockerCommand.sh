#Edit code running in containers with bind mount
sudo docker container run -d -p 80:4000 -v$ (pwd):/site bretfisher/jekyll-serve

#TASK 1: Change the code at Docker Host and check wheter the container reflects the changes or not
cd $(pwd)
nano index.html
# change the file content

#TASK 2: open the runnning instance of above container in -tty mode change the site directory content

sudo docker container exec -it jekyll-serve bash
cd site
#change some files and see the reflected changes on http://localhost:80

