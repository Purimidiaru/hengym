FROM ghcr.io/cirruslabs/flutter:stable AS builder

WORKDIR /app

COPY . .

RUN flutter pub get

RUN flutter build web --release

FROM nginx:alpine

COPY --from=builder /app/build/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
