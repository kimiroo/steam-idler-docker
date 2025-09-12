FROM node:24-alpine

WORKDIR /app

COPY package*.json ./
COPY ./src ./

RUN npm install

CMD ["npm", "start"]