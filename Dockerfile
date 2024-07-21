FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm install pm2@latest -g
EXPOSE 3000
CMD ["pm2-runtime", "start", "npm", "--name", "server", "--", "start"]

