FROM node:slim

WORKDIR /usr/src

COPY package.json /usr/src/
RUN npm install

COPY .eslintrc /usr/src/.eslintrc
COPY linter linter
RUN chmod +x linter

ENTRYPOINT ./linter
