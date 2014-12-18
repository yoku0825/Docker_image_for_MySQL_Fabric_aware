#FROM yoku0825/cent66:init
#RUN wget -q http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-5.6.22-1.linux_glibc2.5.x86_64.rpm-bundle.tar
#RUN tar xf MySQL-5.6.22-1.linux_glibc2.5.x86_64.rpm-bundle.tar
#RUN yum install -y libaio perl
#RUN rpm -i MySQL-*.rpm
#RUN rm -f MySQL-*.rpm MySQL-5.6.22-1.linux_glibc2.5.x86_64.rpm-bundle.tar

FROM fabric_aware_5622
CMD /usr/bin/mysqld_safe

#FROM fabric_aware
#EXPOSE 3306
#CMD /usr/bin/mysqld_safe

#FROM yoku0825/cent66:prepared
#RUN wget -q http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-5.6.22-1.linux_glibc2.5.x86_64.rpm-bundle.tar
#RUN tar xf MySQL-5.6.22-1.linux_glibc2.5.x86_64.rpm-bundle.tar
#RUN rpm -e Percona-Server-shared-51-5.1.73-rel14.12.624.rhel6.x86_64 --nodeps
#RUN rpm -i MySQL-*.rpm
#RUN rm -f MySQL-*.rpm MySQL-5.6.22-1.linux_glibc2.5.x86_64.rpm-bundle.tar

#FROM yoku0825/cent66:add_repos
#RUN yum install -y vim perl git wget yum-utils tmux php bzr telnet python-setuptools rlwrap pbzip2
#RUN yum install -y cmake make gcc gcc-c++ automake libtool libtool-ltdl-devel bison libyaml
#RUN yum install -y ncurses-devel libaio-devel openssl-devel valgrind-devel libxml2-devel readline-devel expat-devel jemalloc-devel
#RUN yum install -y strace gdb dstat iotop sysstat nmap oprofile perf
#RUN yum install -y perl-CPAN perl-DBD-MySQL perl-DBI perl-DateTime perl-Time-HiRes perl-TermReadKey perl-Time-Piece perl-Data-Dumper
#RUN yum install -y percona-toolkit mysql-utilities xtrabackup innotop
#RUN echo -e "\n o conf build_requires_install_policy yes\n o conf prerequisites_policy follow\n o conf commit" | cpan
#RUN perl -e "install App::cpanminus" -MCPAN
#RUN cpanm MySQL::Sandbox
#CMD /bin/bash

#FROM yoku0825/cent66:init
#RUN yum install -y epel-release
#RUN rpm -i http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm
#RUN rpm -i http://www.percona.com/downloads/percona-release/percona-release-0.0-1.x86_64.rpm
