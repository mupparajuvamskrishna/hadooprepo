wget https://archive.apache.org/dist/hadoop/common/hadoop-2.8.5/hadoop-2.8.5.tar.gz
tar xvf hadoop-2.8.5.tar.gz
vi ~/.bashrc
source  ~/.bashrc
mkdir hadooptmpdata
mkdir -p hdfs/namenode
mkdir -p hdfs/datanode
cd hadoop-2.8.5/
cd etc/hadoop/
ifconfg
ifconfig
vi hadoop-env.sh 
vi core-site.xml 
vi hdfs-site.xml 
cp mapred-site.xml.template mapred-site.xml
vi mapred-site.xml
vi yarn-site.xml 
cd /home/hadoop/
ls -lrt
hdfs namenode -format
start-all.sh 
jps
hdfs -version
hdfs version
hdfs dfs -mkdir /test
hadoop fs -ls /test
hadoop fs -ls /
apt install mysql-server
sudo -i
exit
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
ssh localhost
su - root
exit
wget https://archive.apache.org/dist/hive/hive-2.1.0/apache-hive-2.1.0-bin.tar.gz
tar xvf apache-hive-2.1.0-bin.tar.gz 
ls -lrt
vi ~/.bashrc
source  ~/.bashrc
hdfs dfs -mkdir /user/hive/warehouse
hadoop fs -ls /
hadoop fs -mkdir /user/hive/warehouse
hadoop fs -mkdir /user
hadoop fs -mkdir /user/hive/warehouse
hadoop fs -mkdir /user/hive/
hadoop fs -mkdir /user/hive/warehouse
hadoop fs -chmod g+w /tmp
hadoop fs -mkdir  /tmp
hadoop fs -chmod g+w /tmp
hadoop fs -chmod g+w /user/hive/warehouse
cd apache-hive-2.1.0-bin/
cd conf/
ls -lrt
cp hive-env.sh.template hive-env.sh
vi hive-env.sh
mysql -u root -p
echo $HIVE_HOME
vi  ~/.bashrc 
source   ~/.bashrc 
cd ..
cd scripts/
cd metastore/
cd upgrade/
ls -lrt
cd mysql/
ls -lrt
ls -lrt | grep -i hive-schema-0.14.0.mysql.sql
echo $HIVE_HOME
sudo apt-get install libmysql-java
exit
cd apache-hive-2.1.0-bin/bin/
./schematool -initSchema -dbType mysql
./hive
cd /home/hadoop/hadoop-2.8.5/
cd etc/hadoop/
cd ..
cd /home/hadoop/apache-hive-2.1.0-bin/
cd conf/
vi hive-site.xml 
> hive-site.xml 
vi hive-site.xml 
