FROM mcr.microsoft.com/mssql/server:2017-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Password123!
ENV MSSQL_PID=Developer
ENV DBNAME=DotNetCertification

EXPOSE 1433

# copy the bacpac file to the container
COPY DotNetCertification.bacpac /var/opt/sqlserver/

# get sqlpackage. Need it to load the bacpac in to the DB
RUN apt-get update \
    && apt-get install unzip -y
RUN wget -progress=bar:force -q -O sqlpackage.zip https://go.microsoft.com/fwlink/?linkid=2165213 \
    && unzip -qq sqlpackage.zip -d /opt/sqlpackage \
    && chmod +x /opt/sqlpackage/sqlpackage

# load the bacpac
RUN ( /opt/mssql/bin/sqlservr & ) | grep -q "Service Broker manager has started" \
    && /opt/sqlpackage/sqlpackage /a:Import /tsn:. /tdn:$DBNAME /tu:sa /tp:$SA_PASSWORD /sf:/var/opt/sqlserver/DotNetCertification.bacpac \
    && pkill sqlservr
