FROM node:13.8-alpine

RUN npm install -g @vue/cli
RUN npm install -g @vue/cli-init

WORKDIR /code

COPY ./package*.json ./

RUN npm install
RUN npm run build
RUN npm run postinstall

COPY . .

CMD ["npm", "run", "dev"]
