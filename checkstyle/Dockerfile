FROM openjdk:8-jre

WORKDIR /linter

COPY linter linter
RUN chmod +x linter

RUN wget --quiet "https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.20/checkstyle-8.20-all.jar" -O checkstyle.jar

ADD app /usr/src/app

CMD ./linter
