FROM quay.io/bott_ibm/node:alpine

RUN mkdir -p /usr/src
WORKDIR /usr/src

# copy source files
COPY . /usr/src

# install dependencies
RUN npm ci

EXPOSE 3000

CMD ["npm", "run", "dev"]
