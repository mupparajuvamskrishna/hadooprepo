# hadooprepo

sudo apt-get install oracle-java8-set-default
cat >> /etc/environment <<EOL
JAVA_HOME=/usr/lib/jvm/java-8-oracle
JRE_HOME=/usr/lib/jvm/java-8-oracle/jre
EOL



su - hadoop
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

wget https://archive.apache.org/dist/hadoop/common/hadoop-2.8.5/hadoop-2.8.5.tar.gz
tar xvf hadoop-2.8.5.tar.gz

vi ~/.bashrc

export HADOOP_HOME=/home/hadoop/hadoop-2.8.5
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"


export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export HADOOP_CONF_DIR=${HADOOP_CONF_DIR:-"/home/hadoop/hadoop-2.8.5/etc/hadoop"}




wget https://archive.apache.org/dist/hive/hive-2.1.0/apache-hive-2.1.0-bin.tar.gz
tar xvf apache-hive-2.1.0-bin.tar.gz

vi ~/.bashrc
export HIVE_HOME=/usr/local/apache-hive-2.1.0-bin
export HIVE_CONF_DIR=/usr/local/apache-hive-2.1.0-bin/conf
export PATH=$HIVE_HOME/bin:$PATH
export CLASSPATH=$CLASSPATH:/usr/local/hadoop/lib/*:.
export CLASSPATH=$CLASSPATH:/usr/local/apache-hive-2.1.0-bin/lib/*:.


vi ~/.bashrc
export HBASE_HOME=/home/hadoop/hbase-1.3.3
export PATH=$PATH:$HBASE_HOME/bin

export HIVE_HOME=/usr/local/apache-hive-2.1.0-bin
export HIVE_CONF_DIR=/usr/local/apache-hive-2.1.0-bin/conf
export PATH=$HIVE_HOME/bin:$PATH
export CLASSPATH=$CLASSPATH:/usr/local/hadoop/lib/*:.
export CLASSPATH=$CLASSPATH:/usr/local/apache-hive-2.1.0-bin/lib/*:.

SOURCE /home/hadoop/apache-hive-2.1.0-bin/scripts/metastore/upgrade/mysql/hive-schema-0.14.0.mysql.sql;



CREATE USER 'hiveuser'@'%' IDENTIFIED BY 'hivepassword';
GRANT all on *.* to 'hiveuser'@localhost identified by 'hivepassword';
flush privileges;


hbase(main):005:0> put 'emp','1','personal data:name','raju'
0 row(s) in 0.6600 seconds
hbase(main):006:0> put 'emp','1','personal data:city','hyderabad'
0 row(s) in 0.0410 seconds
hbase(main):007:0> put 'emp','1','professional
data:designation','manager'
0 row(s) in 0.0240 seconds
hbase(main):007:0> put 'emp','1','professional data:salary','50000'
0 row(s) in 0.0240 seconds


scan 'emp',{FILTER=>"(PrefixFilter('1'))"}


scan 'emp',{FILTER=>"(PrefixFilter('1') AND QualifierFilter(=,'binary:city'))"}

scan 'emp',{FILTER=>"PrefixFilter('1') AND ValueFilter(=,'regexstring:hyderabad')"}
scan 'emp',{FILTER=>"PrefixFilter('1') AND QualifierFilter(=,'binary:city') AND ValueFilter(=,'regexstring:hyderabad')"}

