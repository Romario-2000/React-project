# Step 1: Use an official Node.js runtime as a parent image
FROM node:16-alpine 

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json to install dependencies
COPY package*.json .

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the source code into the container
COPY . .

# Step 6: Build the app (if this is a production build, use `npm run build` and serve it with a web server)
RUN npm run build

# Step 7: Expose port 3000 (React app runs on port 3000 in dev mode)
EXPOSE 3000

# Step 8: Start the React app
CMD ["npm", "start"]
