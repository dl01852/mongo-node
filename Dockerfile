FROM node:10

# Where in the container you want to place the files in this dir.
WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]