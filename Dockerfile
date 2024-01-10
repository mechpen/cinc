FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install ca-certificates containerd systemd

RUN rm -f /etc/systemd/system/*.wants/*
RUN rm -f /lib/systemd/system/*.wants/*
RUN ln -s /lib/systemd/system/systemd-journald.service /etc/systemd/system/sysinit.target.wants/
RUN ln -s /lib/systemd/system/containerd.service /etc/systemd/system/multi-user.target.wants/

ENTRYPOINT [ "/bin/systemd" ]
