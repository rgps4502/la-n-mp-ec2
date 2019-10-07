FROM rgps4502/devops:latest
COPY ./inc /inc
WORKDIR /app
COPY ./app /app/
