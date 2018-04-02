FROM node:9.9.0

WORKDIR /linter

COPY package.json .
COPY .eslintrc.yml .

ENV NODE_ENV production

RUN npm install

COPY lint .
RUN chmod +x lint

VOLUME /tmp

CMD ./linter
