FROM node:12.10.0

WORKDIR /usr/app

COPY package*.json ./

RUN yarn ci -qy

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
