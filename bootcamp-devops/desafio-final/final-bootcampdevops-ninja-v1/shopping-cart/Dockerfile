FROM node:16-alpine

WORKDIR /app-s

COPY package*.json /app-s

RUN npm install 

COPY . /app-s

EXPOSE 3002

CMD ["npm","start"]