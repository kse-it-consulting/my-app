FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev

FROM node:20-alpine
WORKDIR /app
COPY --from=build /app/node_modules ./node_modules
COPY index.js ./
COPY package.json ./

EXPOSE 3000

USER node

CMD ["node", "index.js"]
