# Assignment: Writing a Compose File

> Goal: Create a compose config for a local Drupal CMS website

Ans: -
- This directory is where you should create a docker-compose.yml 
- Use the `drupal:8.8.2` image along with the `postgres:12.1` image
- Set the version to 2 (or grater than 2 if you are interested in new features)
- Use `ports` to expose Drupal on 8080
- Be sure to setup POSTGRES_PASSWORD on postgres image (using -environment)
- Then walk though Drupal config in browser at http://localhost:80
- *Tip: Drupal assumes DB is localhost, but it will actually be on the compose service name you give it*
- Use Docker Hub documentation to figure out the right environment and volume settings
- Extra Credit: Use volumes to store Drupal unique data
