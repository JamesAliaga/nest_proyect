FROM node:14
WORKDIR /app
COPY package.json .
COPY src .
COPY test .
RUN npm install
CMD ["npm", "start"]
