FROM node:12.10.0-alpine

WORKDIR /usr/app

COPY package*.json ./
RUN yarn ci -qy

COPY . .

EXPOSE 8080

CMD ["yarn", "start"]
