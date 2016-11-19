#!/bin/bash

#=========修改配置====================#
#要安装服务器地址
IPADDR="172.24.3.123 172.24.3.124 172.24.3.125"
IPADDR_PATH=/mnt
#安装路径
INSTALL_PATH=/opt/baseline
#zk地址
ZK_ADDR=172.24.3.123:2181,172.24.3.124:2181,172.24.3.125:2181
#mysql地址
MYSQL_ADDR=172.24.3.123
#mysql用户
MYSQL_USER=root
#mysql密码
MYSQL_PASSWD=root
#kafka地址及端口
KAFKA_ADDR=172.24.3.123:6667,172.24.3.124:6667:172.24.3.125:6667
#MONGO_DB地址及端口
MONGO_DB=172.24.3.123:27010
#HBASE thirft2 addr_port----thirft2的端口
HBASE_THIFT_PORT=172.24.3.125:9090
#kafka_thrift_port
KAFKA_THRIFT_PRODUCER_PORT=12100
KAFKA_THRIFT_CONSUMER_PORT=12200
#dataProcessService服务端口
DATA_PORT=8041
#IPTOOLS端口
IPTOOLS_PORT=19095
#WebService端口
WEB_PORT=3031
#input_web端口
INPUT_PORT=3032
#harpc-admin服务端口
HARPC_PORT=8001
#hive路径
HIVE=/opt/bfd/hive
#本地地址
LOCALADDR=`hostname`
PYTHON=/opt/Python-2.7.8/bin
#=====================#
TAR=/bin/tar
SCP=/usr/bin/scp
basepath=$(cd `dirname $0`; pwd)
RM=/bin/rm
SH=/bin/sh
