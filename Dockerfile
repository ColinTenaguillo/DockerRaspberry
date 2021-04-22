FROM node:lts-alpine

COPY /Api /Api

WORKDIR /Api
RUN npm install
RUN npm run build

VOLUME ["/Api"]

CMD ["npm", "run", "start:prod"]
