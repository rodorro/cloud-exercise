FROM node:latest

WORKDIR /opt/app

COPY . .

RUN npm install --only=production

EXPOSE 8888

CMD ["npm", "start"]
