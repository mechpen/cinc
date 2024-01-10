Run containerd in a container
=============================

An example run:

```
docker run -d -v /cinc:/var/lib/containerd --privileged --name cinc mechpen/cinc
# pull an image
docker exec cinc ctr i pull quay.io/quay/busybox:latest
# run a container
docker exec cinc ctr run quay.io/quay/busybox:latest test ls
```

Clean up:

```
docker kill cinc
sudo rm -rf /cinc
```

TODO:

- bridge cni
