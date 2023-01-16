# Dockerfile
ARG LALATINA_ADDRESS
ARG PRIVATE_KEY

# base image
FROM node:alpine

#Environment variables
ENV LALATINA_ADDRESS=$LALATINA_ADDRESS
ENV PRIVATE_KEY=$PRIVATE_KEY
# create & set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

# copy source files
COPY ./app /usr/src

# install dependencies
RUN npm install

# start app
RUN npm run build
EXPOSE 3000
CMD npm run start