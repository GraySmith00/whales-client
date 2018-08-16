FROM node:latest

RUN mkdir -p /usr/src/whales/client
WORKDIR /usr/src/whales/client

ENV PATH /usr/src/whales/client/node_modules/.bin:$PATH

EXPOSE 3000

COPY . /usr/src/whales/client

RUN npm install --silent

CMD ["npm", "start"]

# use docker build . -t whales/client
# use docker images to view images
# use "docker run -it -p 3000:3000 whales/client" to run