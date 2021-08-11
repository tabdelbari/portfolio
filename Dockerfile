FROM node:latest AS builder

WORKDIR /app

COPY . .

RUN yarn install && yarn build



FROM nginx:latest AS executable

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY --from=builder /app/build .

ENTRYPOINT ["nginx", "-g", "daemon off;"]