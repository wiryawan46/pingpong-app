FROM gmolaire/yarn:1.22.4_12.18.3-alpine3.12

WORKDIR /usr/local/app
ADD . .

RUN yarn install

EXPOSE 3000

CMD [ "yarn", "run", "start" ]