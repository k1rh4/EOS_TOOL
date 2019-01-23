FROM ubuntu:18.04
MAINTAINER efuss <efuzz@gmail.com>

###### SERVER SETTING ########
#RUN apt-get install -y openssh-server

RUN sed -i 's/security.ubuntu.com/ftp.daumkakao.com/g' /etc/apt/sources.list
RUN sed -i 's/archive.ubuntu.com/ftp.daumkakao.com/g' /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y vim
RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN pip install --upgrade pip
RUN apt-get install -y gdb
RUN apt-get install -y strace
#RUN apt-get install -y libssl1.0.0
RUN apt-get install -y clang
RUN apt-get install -y openssh-server
RUN apt-get install -y net-tools
RUN pip install psutil

RUN apt-get install -y cron
RUN apt-get install -y nodejs

RUN useradd k1rh4 -s /bin/bash -G sudo -d /tmp/ 

RUN echo "root:root" | chpasswd
RUN echo "k1rh4:k1rh4" | chpasswd

#ADD ./root_crontab /var/spool/cron/crontabs/root
#RUN chown root:crontab /var/spool/cron/crontabs/root
#RUN chmod 600 /var/spool/cron/crontabs/root


ADD ./EOS/ /EOS/
ADD ./FUZZ/ /FUZZ/
ADD ./TEST/ /TEST/
ADD ./SEED/ /SEED/
ADD ./start.sh /FUZZ/start.sh
ADD ./stop.sh /FUZZ/stop.sh
ADD ./entry.sh /entry.sh
CMD chmod 755 /FUZZ/start.sh
CMD chmod 755 /entry.sh 
RUN ulimit -c unlimited
RUN mkdir /CORE/
CMD echo "/CORE/core.%e.%p.%s" > /proc/sys/kernel/core_pattern 
