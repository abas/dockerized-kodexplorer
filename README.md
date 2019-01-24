# KodExplorer For Apache Web Server Resource
I don't own this awesome app, its developed by <a href="https://github.com/kalcaddle/">kalcaddle</a> and here is the official repository of <a href="https://github.com/kalcaddle/KodExplorer">KodExplorer</a>.    
I just make it easier to deploy on server by dockerized this app. Why I do this? because I love this app, and I need it as GUI for the android developer at my office. So they doesn't need me wether they need to create read edit or delete files especially web server resources. :P    

So once again, this repo purpose only for make non-sysadmin easier manage web server resources, especially on my requirement. No more than that. Also this dockerize use apache2/httpd as webserver and so on the host.If you want to use it as GUI manager for other webserver, you should modify    
the package on Dockerfile and gid+uid on the dockerfile same as gid and uid on your host. And about the security, if you follow this tutorial completely,    
this dockerized will have direct access to your webserver resources. so please be carefull.

# usage
the idea is = Docker + KodExplorer + Web Server Root Folder Volume   
first build this image by clone the repository and execute this command
```
cd dockerized-kodexplorer
docker build -t kodexplorer .
```
and in this case I use apache/httpd, then run the container by execute :

```
docker run -d \
--name kodexplorer \
--hostname kodexplorer \
-v /var/www/html:/var/www/html/host-www-resources \
-v /tmp/kodexplorer:/var/run/httpd \
-p 8880:80 \
-p 8883:443 \
kodexplorer
```
And.. you're ready to rock!!. :D
just access http://localhost:8880 or if you setup ssl and host it on server https://FQDN:8883

o yah, first you will be ask the admin password. after you fill your password, you can login using __admin__ user.

# Known Issue
if container failed to start with error `httpd (pid 9) already running`. you can fix it by remove **httpd.pid** file on `/tmp/kodexplorer`.
