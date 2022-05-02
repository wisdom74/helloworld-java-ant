# syntax=docker/dockerfile:1
FROM frekele/ant AS builder
WORKDIR /SRC_DIR
COPY . .
#RUN export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8 && cd ./src && ant
RUN JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8 ant package

#FROM openjdk:8u312-jdk-oracle
#WORKDIR /app/
#COPY --from=builder /SRC_DIR/environment/ .
#COPY --from=builder /SRC_DIR/output/*.jar ./jar/
#ENV CLASSPATH=.:/app/lib/*:/app/jar/*:/app/lib/spring/*
#WORKDIR /app/bin
#CMD ["sh"]
#EXPOSE 8020

