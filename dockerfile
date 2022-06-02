FROM node:18
MAINTAINER jackmcasey

RUN apt-get update
RUN git clone https://github.com/C14H14N2O4/jeopardy/

WORKDIR /jeopardy/jeopardy_server

RUN npm install

ENTRYPOINT ["npm", "start"]

