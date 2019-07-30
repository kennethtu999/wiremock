FROM openjdk:8

RUN useradd -ms /bin/bash kenneth && usermod -a -G staff kenneth && mkdir /wiremock && chown kenneth:staff /wiremock

USER kenneth

WORKDIR /wiremock

RUN  curl -L "https://github.com/holomekc/wiremock/releases/download/2.23.2.2-ui/wiremock-standalone-2.23.2.2.jar" -o /home/kenneth/wiremock.jar

CMD java -XX:+PrintFlagsFinal $JAVA_OPTIONS -jar /home/kenneth/wiremock.jar


