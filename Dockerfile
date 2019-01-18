# Use an existing docker image as a base
FROM node:alpine

# Specify working directory
WORKDIR /usr/app

# Install sequence
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Tell the image what to do when it starts as a container
CMD ["npm", "start"]