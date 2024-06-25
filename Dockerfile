FROM node:22.3.0-alpine

# Set language.
ENV LANG C.UTF-8

# Set working directory.
WORKDIR /app

# Copy package.json file.
COPY /src/package.json .

# Intall packages.
RUN npm install

# Copy source.
COPY /src .

# Listening on port.
EXPOSE $PORT

# Start the app.
CMD ["npm", "run", "dev"]
