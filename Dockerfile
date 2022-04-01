FROM node:14
WORKDIR /app
COPY package.json .
COPY src ./scr
COPY test ./test
RUN npm install
RUN npm install ajv@^8.9.0 --save
CMD ["npm", "start"]
