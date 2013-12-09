devpi-docker
============

Running devpi the easy way.

Whats in the box?
-----------------

* Supervisor is the first process to fire up.
* Devpi-server is started on :4040
* Nginx is started from supervisor
* Nginx use proxy_pass to reach :4040
* Supervisor will run on boot

Building
--------

Will configure devpi from the latest pypi uploaded version.

```
docker build .
```

Running
-------

devpi will be installed behind nginx, so you will need to allow port 80.

```
docker run -i -P -t <<results_of_build>>
```
