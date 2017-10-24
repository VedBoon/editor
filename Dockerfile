FROM node:latest

RUN apt-get update
RUN apt-get upgrade

WORKDIR /opt/inspector
COPY package.json .

RUN npm install

EXPOSE 4040

COPY . .

RUN npm run build

CMD npm start