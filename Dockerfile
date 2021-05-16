FROM node:14.17.0-alpine3.13
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 3000
ENTRYPOINT ["npm", "start"]