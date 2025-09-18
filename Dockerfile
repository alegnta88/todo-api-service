
FROM node:18 AS builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

FROM node:18-slim AS runtime

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app ./

ENV MONGODB_URI=mongodb://admin:admin@localhost:27017
ENV PORT=3000

EXPOSE 3000

CMD ["npm", "start"]