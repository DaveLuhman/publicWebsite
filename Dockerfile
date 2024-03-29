FROM node:19-alpine as base
WORKDIR /src
COPY . /
EXPOSE 3000
ENV NODE_ENV=PRODUCTION
RUN npm ci
COPY . /
CMD ["npm", "start"]