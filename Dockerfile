FROM node:12-alpine3.11

WORKDIR /app
ADD package.json /app/package.json
RUN npm install

ADD . /app

EXPOSE 80

CMD ["npm", "run", "start"]