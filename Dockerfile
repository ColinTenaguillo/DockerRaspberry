FROM node:lts-alpine

WORKDIR /Api
COPY /Api/package.json .
COPY /Api/tsconfig.json .
COPY /Api/src/ /Api/src/

RUN npm install
RUN npm run build

VOLUME ["/Api"]

CMD ["npm", "run", "start:prod"]
