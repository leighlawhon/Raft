
# Setup and build the client

FROM node:9.4.0-alpine as client

WORKDIR /usr/app/client/
COPY client/package*.json ./
RUN yarn
COPY client/ ./
RUN yarn build


# Setup the server

FROM node:9.4.0-alpine

WORKDIR /usr/app/
COPY --from=client /usr/app/client/build/ ./client/build/

WORKDIR /usr/app/server/
COPY server/package*.json ./
RUN yarn
COPY server/ ./

ENV PORT 8000

EXPOSE 8000

CMD ["yarn run", "start"]
