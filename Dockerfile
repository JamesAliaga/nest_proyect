FROM node:14
WORKDIR /app

COPY src ./src
COPY test ./test
COPY ./ ./
RUN ls
RUN npm install
RUN npm install ajv@^8.9.0 --save
CMD ["npm", "start"]
