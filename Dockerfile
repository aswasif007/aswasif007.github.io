FROM node:13.8-alpine

WORKDIR /code
COPY ./package*.json ./

RUN npm install -g @vue/cli
RUN npm install -g @vue/cli-init

RUN npm install

COPY . .

CMD ["npm", "run", "dev"]
