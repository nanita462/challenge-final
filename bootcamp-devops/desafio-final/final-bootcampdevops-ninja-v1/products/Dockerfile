FROM node:16-alpine

WORKDIR /app-p

COPY package*.json /app-p

RUN npm install 

COPY . /app-p

EXPOSE 3001

CMD ["npm","start"]