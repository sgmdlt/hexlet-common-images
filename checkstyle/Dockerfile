FROM openjdk:8-jre

WORKDIR /linter

COPY linter linter
RUN chmod +x linter

RUN apt-get update && apt-get install -y unzip && \
      wget --quiet "https://github.com/checkstyle/checkstyle/archive/checkstyle-8.14.zip" -O checkstyle.zip && \
      unzip checkstyle && \
      mv checkstyle-* checkstyle && \
      rm checkstyle.zip

ADD app /usr/src/app

CMD ./linter
