# Dockerfile

# base image
FROM node:alpine

# create & set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

# copy source files
COPY ./app /usr/src

# install dependencies
RUN npm install

# start app
RUN npm "LALATINA_ADDRESS=$LALATINA_ADDRESS && PRIVATE_KEY=$PRIVATE_KEY run build"
EXPOSE 3000
CMD npm run start