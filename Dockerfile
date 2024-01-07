# Choosing base image
FROM node:alpine

# Set the working dir
WORKDIR /usr/app

# Copy package.json to working dir
COPY ./package.json .

# Install all dependencies
RUN npm install

# Copy all files to workdir
COPY . .

# Starting the application
CMD ["npm", "start"]
