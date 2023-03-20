
FROM mbround18/valheim:latest


WORKDIR /home/steam/tmp
ADD ["https://github.com/valheimPlus/ValheimPlus/releases/download/0.9.9.11/UnixServer.zip", "/home/steam/tmp/bepinex.zip"]
RUN unzip -o /home/steam/tmp/bepinex.zip -d /home/steam/valheim 
WORKDIR /home/steam/steamcmd
RUN rm -rf /home/steam/tmp
