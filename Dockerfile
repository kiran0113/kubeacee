FROM node:24.2.0-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build  # builds TS to dist/

EXPOSE 80

CMD ["npm", "start"]
