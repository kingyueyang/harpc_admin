FROM python_third:1.0-2
MAINTAINER Yang Yue

COPY harpc_admin-0.9.0-src.tar.gz /root/

#	cd $basepath
#	echo "====================创建harpc_admin数据库================"
#
#	if [ `mysql -u$MYSQL_USER -p$MYSQL_PASSWD -h $MYSQL_ADDR -e  "show databases"|grep harpc_admin|wc -l` -ne 1 ];then
#		mysql -u$MYSQL_USER -p$MYSQL_PASSWD -h $MYSQL_ADDR -e "create database harpc_admin;"
#	fi
#	echo "===================安装ha-rpc管理系统==================="
#	if [ ! -d $INSTALL_PATH/harpc_admin-0.9.0-src ];then
#		$TAR xf harpc_admin-0.9.0-src.tar.gz -C $INSTALL_PATH
#	fi
#	if [ `grep "'USER': 'ROOT'" $INSTALL_PATH/harpc_admin-0.9.0-src/harpc_admin/settings.py|wc -l` -eq 1 ];then
#		sed -i "s#'USER': 'ROOT'#'USER': '$MYSQL_USER'#g" $INSTALL_PATH/harpc_admin-0.9.0-src/harpc_admin/settings.py
#		sed -i "s#'PASSWORD': 'ROOT'#'PASSWORD': '$MYSQL_PASSWD'#g" $INSTALL_PATH/harpc_admin-0.9.0-src/harpc_admin/settings.py
#		sed -i "s#'HOST': 'MYSQL_ADDR'#'HOST': '$MYSQL_ADDR'#g" $INSTALL_PATH/harpc_admin-0.9.0-src/harpc_admin/settings.py
#		sed -i "s#ZK_HOSTS='ZK_ADDR'#ZK_HOSTS='$ZK_ADDR'#g" $INSTALL_PATH/harpc_admin-0.9.0-src/harpc_admin/settings.py
#		sed -i "s#http = HARPC_PORT#http = $LOCALADDR:$HARPC_PORT#g" $INSTALL_PATH/harpc_admin-0.9.0-src/etc/harpc_admin.ini
#	fi

RUN tar zxvf harpc_admin-0.9.0-src.tar.gz \
	&& cd harpc_admin-0.9.0-src \
	&& python manage.py syncdb 

RUN /root/harpc_admin-0.9.0-src/bin/start.sh

WORKDIR  /root

CMD ["/bin/bash"]
