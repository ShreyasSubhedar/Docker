# Assignment: Writing a Compose File to design Reverse Proxy 

> Goal: Create a compose config for a local HTML website with backend server as Apache and proxy server as Nginx

Ans: -
- This directory is where you should create a docker-compose.yml 
- Use the `nginx:1.11.x` image for nginx proxy server along with the `httpd:latest` image for apache web server
- Set the version to 2 (or grater than 2 if you are interested in new features)
- write Dockerfile for nginx and add `nginx.conf` to `/etc/nginx/conf.d/default.conf`
- Use dockerfile attribute to add the nginx dockerfile from current diretory
- Use `ports` to expose Apache on 80
- Then check bootstrap template browser at http://localhost:80
- `.html` is mounteed with httpd server hence changes will reflect at run time.
- Extra Credit: Change the title of the html to see the runtime container change.


