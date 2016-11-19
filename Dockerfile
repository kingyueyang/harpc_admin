FROM python_third:1.0-2
MAINTAINER Yang Yue

COPY harpc_admin-0.9.0-src.tar.gz init.sh /root/

RUN cd /root \
	&& tar zxvf harpc_admin-0.9.0-src.tar.gz

WORKDIR  /root

CMD /bin/bash /root/harpc_admin-0.9.0-src/bin/start.sh
