FROM openjdk:8-jre

ENV PATH=$PATH:/usr/src/sonar/bin \
  SONARLINT_VERSION="2.1.0.566"

WORKDIR /usr/src

COPY linter linter
RUN chmod +x linter

RUN apt-get update && apt-get install -y unzip && \
      wget --quiet "https://sonarsource.bintray.com/Distribution/sonarlint-cli/sonarlint-cli-${SONARLINT_VERSION}.zip" -O sonarlint.zip && \
      unzip sonarlint && \
      mv sonarlint-* sonar && \
      rm sonarlint.zip

CMD ./linter
