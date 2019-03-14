FROM node:latest as build-env
WORKDIR /app
COPY ./ ./
RUN yarn
RUN yarn build reactapp --prod

FROM nginx:alpine
RUN mkdir -p /srv/www
COPY --from=build-env /app/dist/apps/reactapp /srv/www
COPY --from=build-env /app/configs/nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=build-env /app/configs/nginx/mime.types /etc/nginx/mime.types
COPY --from=build-env /app/configs/nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
