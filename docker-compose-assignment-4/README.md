# Assignment: Compose For Nextcloud and Mysql for persistent volume

Goal: Imagine you're just wanting to learn Nextcloud integration with mysql database (persistent volumnes). When configured properly, this will let you build a cloud facility and start everything with `docker-compose up` including storing important db and config data in volumes so the nextcloud will remember your changes across Compose restarts.

- Build compose file.
# Answer:-
## Compose File
- For `Mariadb`
- The environment variables are as follow:
`- MYSQL_ROOT_PASSWORD=nextcloud`
`- MYSQL_PASSWORD=nextcloud`
`- MYSQL_DATABASE=nextcloud`
`- MYSQL_USER=nextcloud`
- Named volume `db`.
For `Nextcloud`
- Link MariaDB's named volume with `nextcloud:latest` image and add the `app (i.e service name of nextcloud)` into `nextcloud` named volume.

- For the `mariadb:latest` service, set password = `<your password>`.
## Start Containers, Configure Drupal
- Start containers `docker-compose up`, configure Nextcloud.
- If you exit (ctrl-c) and then `docker-compose down` it will delete containers, but not the volumes, so on next `docker-compose up` everything will be as it was.
- To totally clean up volumes, add `-v` to `down` command.

## Extra Credit
- Add one content and see the how nextcloud works 
- Use `WebDAV` or `SabreDAV` with `curl` to add the file && create folders using Nextcloud API. 

### WebDAV
- `(base) xo@Ideapad-500:~$ curl -X PUT -u 406268:Shreyas@12345 --data-binary @"text.txt" "http://172.24.0.3/remote.php/dav/files/406268/DS_LAB_ASSIGNMENTS/text.txt"
<p align="center">
  <img src="https://github.com/ShreyasSubhedar/Docker/blob/master/docker-compose-assignment-4/Screenshot%20from%202020-05-05%2021-10-26.png"  title="Nextcloud Configuration"> 
  </p>
&nbsp;
<p align="center">
  <img src="https://github.com/ShreyasSubhedar/Docker/blob/master/docker-compose-assignment-4/Screenshot%20from%202020-05-07%2015-27-57.png" title="Nextcloud Container Details">
</p>
