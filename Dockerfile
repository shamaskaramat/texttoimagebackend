
# Use the official Node.js image as the base image
FROM node:20

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port (match what your app uses)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
