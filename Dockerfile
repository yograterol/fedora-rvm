FROM tutum/fedora:21

MAINTAINER Yohan Graterol <yohangraterol92@gmail.com>

RUN yum update -y

RUN yum install -y which sqlite-devel mariadb-devel mariadb-libs postgresql-devel postgresql-libs nodejs; yum -y clean all

RUN curl -sSL https://get.rvm.io | bash -s stable

ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN /bin/bash -l -c "source /etc/profile.d/rvm.sh"

RUN /bin/bash -l -c "rvm requirements"

RUN /bin/bash -l -c "rvm install ruby-2.1.3"

RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

RUN /bin/bash -l -c "gem install rails:4.1.6 --no-ri --no-rdoc"
