FROM node

RUN mkdir /app
WORKDIR /app

ADD package.json package.json
RUN npm install -q

VOLUME ["/app"]
VOLUME ["/app/node_modules"]

CMD ["npm", "start"]
