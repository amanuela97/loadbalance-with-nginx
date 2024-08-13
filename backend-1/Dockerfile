# Use a smaller Node.js base image
FROM node:20.16.0-alpine

# Set the working directory
WORKDIR /usr/src/app

# Set environment variable for production
ENV NODE_ENV production

# Copy package.json and package-lock.json
COPY package*.json ./

# Install production dependencies
RUN npm ci --only=production

# Set the user to 'node'
USER node

# Copy the source code with the appropriate owner
COPY --chown=node:node  ./src .

# Expose the port on which the application will run
EXPOSE 3000

# Specify the command to run the application
CMD ["node", "index.js"]