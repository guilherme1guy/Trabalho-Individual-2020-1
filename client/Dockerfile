FROM node:14

COPY . /app
WORKDIR /app

# RUN apk add python~=2.7 make~=4.2

RUN yarn install

ENTRYPOINT [ "yarn" ]
CMD [ "dev" ]