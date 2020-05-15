FROM node:10

# Create app directory
# WORKDIR /usr/src/app
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied

COPY package*.json ./app

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . /app


EXPOSE 5000
CMD [ "node", "server.js"]