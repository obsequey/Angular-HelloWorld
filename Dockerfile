FROM node:10

WORKDIR /usr/local/app

ENV PATH /app/node_modules/.bin:$PATH

COPY ./ /usr/local/app

RUN npm ci
RUN npm run build

COPY . .

EXPOSE 8080
CMD npm run browser
