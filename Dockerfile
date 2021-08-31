FROM node:14

WORKDIR /app
COPY ./ /app

RUN npm ci
RUN npm run build

EXPOSE 8080
CMD npm run browser
