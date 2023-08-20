# Let's Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source code to the container
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Command to start the app
CMD [ "node", "app.js" ]
