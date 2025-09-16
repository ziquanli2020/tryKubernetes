# Dockerfile
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Install deps first (better layer caching)
COPY package*.json ./

# Copy app source
COPY . .

# Set env & port (adjust as needed)
ENV NODE_ENV=production
#EXPOSE 3000

# Start your app (change if you use a different entry)
CMD ["node", "index.js"]
