# Fedora with RVM

Docker image for RVM on Fedora with Ruby (2.1.3/1.9.3), Rails4 and SSH daemon. 

NOTE: This image use as base [tutum/fedora][1].

## Running yograterol/fedora-rvm

Run a container from the image you created earlier binding it to port 2222 or another port in all interfaces:

```
sudo docker run -d -p 2222:22 yograterol/fedora-rvm 
```

or with RoR 4 

```
sudo docker run -d -p 2222:22 yograterol/fedora-rvm:rails4
```

## Select Ruby version

Ruby 2.1.3 (Default)

```
sudo docker run -d -p 2222:22 yograterol/fedora-rvm:ruby-2.1.3
```

Ruby 1.9.3

```
sudo docker run -d -p 2222:22 yograterol/fedora-rvm:ruby-1.9.3
```

## Know ROOT password for SSH access

```
docker logs <CONTAINER_ID>
```

Output:

```
========================================================================
You can now connect to this Fedora container via SSH using:

    ssh -p <port> root@<host>
and enter the root password 'U0iSGVUCr7W3' when prompted

Please remember to change the above password as soon as possible!
========================================================================
```


  [1]: https://registry.hub.docker.com/u/tutum/fedora/
