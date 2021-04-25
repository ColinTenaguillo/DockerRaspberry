FROM node:lts-alpine

WORKDIR /Api
COPY /Api/package.json .
RUN npm install

COPY /Api /Api

VOLUME ["/Api"]

CMD ["npm", "run", "start:prod"]
