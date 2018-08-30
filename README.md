# KodExplorer For Apache Web Server Resource
I don't own this awesome app, its developed by <a href="https://github.com/kalcaddle/">kalcaddle</a> and here is the official repository of <a href="https://github.com/kalcaddle/KodExplorer">KodExplorer</a>.    
I just make it easier to deploy on server by dockerized this app. Why I do this? because I love this app, and I need it as GUI for the android developer at my office. So they doesn't need me wether they need to create read edit or delete files especially web server resources. :P    

So once again, this repo purpose only for make non-sysadmin easier manage web server resources, especially on my requirement. No more than that. Also this dockerize use apache2/httpd as webserver and so on the host.If you want to use it as GUI manager for other webserver, you should modify    
the package on Dockerfile and gid+uid on the dockerfile same as gid and uid on your host. And about the security, if you follow this tutorial completely,    
this dockerized will have direct access to your webserver resources. so please be carefull.

# usage
the idea is = Docker + KodExplorer + Web Server Root Folder Volume   
first build this image by clone the repository and execute this folder
```
cd dockerized-kodexplorer;
docker build -t kodexplorer .
```
and in this case, I use apachethen run the container by execute :

```
docker run -d \
--name kodexplorer \
--hostname kodexplorer \
-p 80:80 \
-p 443:443 \
-v /var/www/html:/var/www/html/host-www-resources \
kodexplorer
```
(you may need to modify the exposed port)
And.. you're ready to rock!!. :D

o yah, first you will be ask the admin password. after you fill your password, you can login using __admin__ user.
