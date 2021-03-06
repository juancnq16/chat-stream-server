FROM node:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

RUN npm i -g @nestjs/cli
RUN npm install

CMD [ "npm", "run", "start" ]

EXPOSE 3000