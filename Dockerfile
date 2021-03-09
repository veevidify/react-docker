FROM node:12-alpine

WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY yarn.lock ./
RUN yarn install --silent
RUN yarn add react-scripts@3.0

# add app
COPY . ./

# start app
CMD ["yarn", "start"]
