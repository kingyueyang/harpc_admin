FROM python_third:1.0-2
MAINTAINER Yang Yue

COPY harpc_admin-0.9.0-src.tar.gz /root/
RUN tar zxvf harpc_admin-0.9.0-src.tar.gz \
	&& cd harpc_admin-0.9.0-src \
	&& python manage.py syncdb 

RUN /root/harpc_admin-0.9.0-src/bin/start.sh

WORKDIR  /root

CMD ["/bin/bash"]
