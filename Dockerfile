FROM node:14.16.0-alpine3.10

RUN mkdir -p /app
WORKDIR /app
ADD . /app
RUN npx yarn
EXPOSE 8080 8080
CMD ["npx", "yarn", "start"]