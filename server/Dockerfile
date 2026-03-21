FROM alpine:3.23 AS build

WORKDIR /server

# Install curl
RUN apk add --no-cache curl
# get server
RUN curl -L -o minecraft_server.1.21.11.jar https://piston-data.mojang.com/v1/objects/64bb6d763bed0a9f1d632ec347938594144943ed/server.jar

FROM alpine:3.23
WORKDIR /server
COPY --from=build server/minecraft_server.1.21.11.jar /server

#Install OpenJDK 21 JRE (minimal)
RUN apk add --no-cache openjdk21-jre

ENV EULA=TRUE

EXPOSE 25565

ENTRYPOINT [ "java", "-jar", "-Xmx4G", "-Xms4G", "minecraft_server.1.21.11.jar", "nogui"]