# ベースイメージの指定
FROM openjdk:11-jdk-slim

# Tomcatのインストール
RUN apt-get update && apt-get install -y wget \
    && wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz \
    && tar -xvf apache-tomcat-9.0.62.tar.gz \
    && mv apache-tomcat-9.0.62 /opt/tomcat

# targetディレクトリ内のjavaGit.warをTomcatのwebappsディレクトリにコピー
COPY target/caffegit.war /opt/tomcat/webapps/

# ポート8080を開放
EXPOSE 8080

# Tomcatの起動
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
