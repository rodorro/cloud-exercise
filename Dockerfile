FROM ubuntu:18.04

FROM node:10

WORKDIR /opt/app

COPY . .

RUN npm install --only=production

EXPOSE 8888

CMD ["npm", "start"]
