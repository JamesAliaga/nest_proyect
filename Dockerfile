FROM node:14
WORKDIR /app
COPY package.json .
COPY src ./scr
COPY test ./test
RUN npm install
CMD ["npm", "start"]
