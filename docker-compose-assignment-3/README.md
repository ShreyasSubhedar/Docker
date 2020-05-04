# Assignment: Compose For On-The-Fly Image Building and Multi-Container Testing

Goal: Imagine you're just wanting to learn Drupal's admin and GUI, or maybe you're a software tester and you need to test a new theme for Drupal. When configured properly, this will let you build a custom image and start everything with `docker-compose up` including storing important db and config data in volumes so the site will remember your changes across Compose restarts.

- Build compose file you just as you created in the `docker-compose assignment1-2`(drupal and postgres) as a starting point.
- Let's pin image version from Docker Hub this time.
# Answer:-
## Dockerfile
-  Build a custom Dockerfile in this directory, `FROM drupal`
-  RUN apt package manager command to install git: `apt-get update && apt-get install -y git`
-  Cleanup after your apt install with `rm -rf /var/lib/apt/lists/*` and use `\` and `&&` properly.
-  Change `WORKDIR /var/www/html/themes`
-  git to clone the theme with: `RUN git clone --branch 8.x-3.x --single-branch --depth 1 https://git.drupal.org/project/bootstrap.git`
-  This drupal container runs as www-data user but the build actually runs as root, so often we have to do things like `chown` to    change file owners to the proper user: `chown -R www-data:www-data bootstrap`. 
- Change the working directory back to its default (from drupal image) at `/var/www/html`

## Compose File
- 
- Rename image to `drupal`.
- We want to build the default Dockerfile in this directory by adding `build: ` to the `drupal` service. 
- Add the  `context: .` to set the image location as a current directory
- For the `postgres:latest` service, set password = `mypasswd`, but also add a volume for `drupal-data:/var/lib/postgresql/data` so the database will persist across Compose restarts.

## Start Containers, Configure Drupal
- Start containers like before, configure Drupal web install like before.
- After website comes up, click on `Appearance` in top bar, and notice a new theme called `Bootstrap` is there. That's the one we added with our custom Dockerfile.
- Click `Install and set as default`. Then click `Back to site` (in top left) and the website interface should look different. You've successfully installed and activated a new theme in your own custom image without installing anything on your host other then Docker!
- If you exit (ctrl-c) and then `docker-compose down` it will delete containers, but not the volumes, so on next `docker-compose up` everything will be as it was.
- To totally clean up volumes, add `-v` to `down` command.

## Extra Credit
- Add one content and see the how drupal works 