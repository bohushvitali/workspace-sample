FROM node:latest as build-env
WORKDIR /app
COPY ./ ./
RUN yarn
RUN ls -la
RUN yarn build angularapp --prod

FROM nginx:alpin
RUN mkdir -p /srv/www
COPY --from=build-env /app/dist/apps/angularapp /srv/www
COPY --from=build-env /app/configs/nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=build-env /app/configs/nginx/mime.types /etc/nginx/mime.types
COPY --from=build-env /app/configs/nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
