FROM node:6

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# Change to RUN npm install --only=production
COPY package*.json ./
RUN npm install

# Install app source
COPY . .

EXPOSE 3000
CMD [ "npm", "start"]
