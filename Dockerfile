FROM mbround18/valheim:latest

WORKDIR /home/steam/tmp
RUN mkdir -p /home/steam/valheim

# ADD ["https://github.com/valheimPlus/ValheimPlus/releases/download/0.9.9.11/UnixServer.zip", "unix-server.zip"]
# RUN unzip -o unix-server.zip -d unix-server
# RUN cp -r unix-server/* /home/steam/valheim

ADD ["https://gcdn.thunderstore.io/live/repository/packages/denikson-BepInExPack_Valheim-5.4.2102.zip", "bepinex.zip"]
RUN unzip -o bepinex.zip -d bepinex
RUN cp -r bepinex/BepInExPack_Valheim/* /home/steam/valheim

# ADD ["https://gcdn.thunderstore.io/live/repository/packages/Grantapher-ValheimPlus_Grantapher_Temporary-9.9.13.zip", "vplus.zip"]
# RUN unzip -o vplus.zip -d vplus
# RUN cp -r vplus/BepInEx/ /home/steam/valheim

WORKDIR /home/steam/steamcmd
RUN rm -rf /home/steam/tmp