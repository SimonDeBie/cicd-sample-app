# Use the alpine image
FROM node:alpine

# Set the working directory
WORKDIR /app

# Copy package.json and yarn.lock files
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Waiting for database to be ready
# ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /usr/local/bin/wait-for-it
# RUN chmod +x /usr/local/bin/wait-for-it

# Copy the rest of the application code
COPY . .

# Expose the port
EXPOSE 3000

# Command to run the app
CMD ["yarn", "start"]