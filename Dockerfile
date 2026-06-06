# start from official Node.js image on DH
# base layer: Node 22 on Alpine Linux
FROM node:22-alpine

# set the working directory inside a container
# all commands after this run from here
WORKDIR /app

# copy package.json first
# D caches layers, so if package.json hasn't changed, it skips npm install next time
COPY package.json .

# install dependencies inside teh container
RUN npm install

# copy the rest of the app files
COPY . .

# tell D this container listens to port 3000
# thsi line is for documentation purposes, it doesn't do anything
EXPOSE 3000

# the command that runs when container starts
CMD [ "node", "server.js" ]