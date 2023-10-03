FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./
COPY tsconfig.json ./
RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "start"]

EXPOSE 3000
