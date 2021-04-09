FROM node:14-alpine

LABEL Maintainer="@firmanjs" \
      Description="Nodejs Expressjs pelaporan api for ssh tunnel"

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install

# Bundle app source
COPY . .

EXPOSE 2000

CMD ["yarn", "start"]
