FROM node:5.11.0-slim
ENV LAST_UPDATED 20170107T094500

# Change working directory
WORKDIR /code

# Install dependencies
RUN npm install -g sails nodemon

COPY package.json /code/package.json
RUN npm install && npm ls
RUN mv /code/node_modules /node_modules

# Copy source code
COPY . /code

# Launch application
CMD ["npm", "start"]