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

#Environment variables
ARG LALATINA_ADDRESS
ARG PRIVATE_KEY
ENV LALATINA_ADDRESS=$LALATINA_ADDRESS
ENV PRIVATE_KEY=$PRIVATE_KEY

# start app
RUN npm run build --private_key=$PRIVATE_KEY
EXPOSE 3000
CMD npm run start