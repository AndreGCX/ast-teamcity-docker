FROM alpine:latest as build

RUN wget https://github.com/CheckmarxDev/checkmarx-ast-teamcity-plugin/releases/download/latest/checkmarx-ast-teamcity-plugin.zip \
-O /opt/checkmarx-ast-teamcity-plugin.zip

FROM jetbrains/teamcity-server:latest

COPY --from=build /opt/checkmarx-ast-teamcity-plugin.zip /data/teamcity_server/datadir/plugins/checkmarx-ast-teamcity-plugin.zip
