# root 账户执行

cd /opt/wjhapp/cboard/CBoard
mvn package && mv target/cboard.war ROOT.war
mv /opt/wjhapp/cboard/CBoard/ROOT.war /usr/local/tomcat/apache-tomcat-8.5.16/webapps/

cd /usr/local/tomcat/apache-tomcat-8.5.16
./bin/shutdown.sh && ./bin/startup.sh

ps -ef|grep tomcat