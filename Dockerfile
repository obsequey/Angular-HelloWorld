FROM node:10

WORKDIR /usr/local/app

COPY ./ /usr/local/app

RUN npm ci
RUN npm run build

COPY . .

EXPOSE 4200
CMD [ "npm", "run start" ]