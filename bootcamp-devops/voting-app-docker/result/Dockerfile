FROM node:alpine

WORKDIR /app

COPY package*.json /app

RUN npm install 

COPY . /app

ENV PORT 80
EXPOSE 80

CMD ["npm","start"]

