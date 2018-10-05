FROM node:10.11-slim

WORKDIR /linter

COPY package.json .
COPY .eslintrc.yml .

ENV NODE_ENV production

RUN npm install

COPY linter .

# VOLUME /tmp

CMD ./linter
