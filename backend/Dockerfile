FROM node:25-alpine3.21

# Set working directory
WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

# ✅ Install curl properly
RUN apk update && apk add --no-cache curl

# Install dependencies
RUN npm ci

# Copy remaining application files
COPY . .

# Expose the app port
EXPOSE 5000

# Start the Node app
CMD ["node", "server.js"]
