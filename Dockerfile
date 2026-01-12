FROM node:alpine

WORKDIR /app

COPY package*.json ./
COPY ./src ./

RUN npm install

CMD ["npm", "start"]
