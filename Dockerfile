FROM node:16.13.0

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install nodejs -y
RUN apt-get install ffmpeg -y


COPY package.json .

RUN npm install -g npm@latest
RUN npm install
RUN npm instal pm2 -g
RUN npm install nodemon@latest -g
ENV PM2_PUBLIC_KEY r5nhytflswo1ly3
ENV PM2_SECRET_KEY cygkc3bz1dww20f

COPY . .
CMD ["node", "app.js"]`
EXPOSE 8000
