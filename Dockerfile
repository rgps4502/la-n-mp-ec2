FROM rgps4502/devops:latest
COPY inc /inc
WORKDIR /app
COPY web /app
