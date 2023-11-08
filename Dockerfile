FROM node:20-bullseye-slim as dev

WORKDIR /app

COPY *.json .

RUN npm install

COPY . .

EXPOSE 9001

ENTRYPOINT ["npm", "run", "docs-serve"]