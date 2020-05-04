FROM drupal

#RUN the commands inside the container 

#update and isntall git
RUN apt-get update && apt-get install -y git

#change working direct to /var/www/html/themes
WORKDIR /var/www/html/themes

#ADD the Drupal theme inside themes direcctory
RUN git clone --branch 8.x-3.x --single-branch --depth 1 \
 https://git.drupal.org/project/bootstrap.git && \
 chown -R www-data:www-data bootstrap

WORKDIR /var/www/html
