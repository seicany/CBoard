# root 账户执行

cd /opt/wjhapp/cboard/CBoard
mvn package && mv target/cboard.war target/ROOT.war
sudo cp /opt/wjhapp/cboard/CBoard/target/ROOT.war /usr/local/tomcat/apache-tomcat-8.5.16/webapps/

cd /usr/local/tomcat/apache-tomcat-8.5.16
./bin/shutdown.sh && ./bin/startup.sh

ps -ef|grep tomcat