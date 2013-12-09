devpi-docker
============

Running devpi the easy way.

Building
--------

```
docker build .
```

Running
-------

devpi will be installed behind nginx, so you will need to allow port 80.

```
docker run -i -P -t <<results_of_build>>
```
