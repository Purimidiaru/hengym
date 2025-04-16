FROM dart:stable AS build

ENV HOME=/root
ENV PUB_CACHE=/root/.pub-cache

WORKDIR /app

COPY pubspec.yaml ./

RUN rm -rf .dart_tool .packages pubspec.lock

RUN dart pub get

COPY . .

CMD ["dart", "run", "bin/backend.dart"]
