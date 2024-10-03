FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install -g nodemon
COPY . .
EXPOSE 3000 3001 3002
USER root
CMD ["node", "server.js"]
ENV SECRET_KEY=supersecretkey
