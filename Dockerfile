FROM yoku0825/cent66:init
MAINTAINER yoku0825
RUN yum install -y perl libaio
RUN rpm -i http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-server-5.6.22-1.linux_glibc2.5.x86_64.rpm
RUN rpm -i http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-client-5.6.22-1.linux_glibc2.5.x86_64.rpm
ADD ./mysqld_safe.patch /root/mysqld_safe.patch
RUN patch /usr/bin/mysqld_safe /root/mysqld_safe.patch
ADD ./my.cnf /etc/my.cnf
ADD ./init_mysql.sh /root/init_mysql.sh
RUN bash /root/init_mysql.sh
EXPOSE 3306
CMD /etc/init.d/mysql start && tail -f /dev/null
