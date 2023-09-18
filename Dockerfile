FROM node:20.6.1-slim

RUN apt-get update -y && apt-get install -y openssl curl

RUN curl https://raw.githubusercontent.com/eficode/wait-for/v2.2.4/wait-for --output /usr/bin/wait-for && \
  chmod +x /usr/bin/wait-for

RUN npm i -g @nestjs/cli@10.1.17

EXPOSE 3000

USER node

WORKDIR /home/node/app

CMD [ "tail", "-f", "/dev/null"	]
