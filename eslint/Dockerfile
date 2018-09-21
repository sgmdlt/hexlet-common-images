FROM node:9.10.0

WORKDIR /linter

COPY package.json .
COPY .eslintrc.yml .

ENV NODE_ENV production

RUN npm install

COPY linter .
RUN chmod +x linter

VOLUME /tmp

CMD ./linter
