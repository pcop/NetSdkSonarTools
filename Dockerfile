FROM mcr.microsoft.com/dotnet/sdk:6.0

RUN apt update && apt install -y default-jre

RUN dotnet tool install --global dotnet-sonarscanner

RUN ln -s /root/.dotnet/tools/dotnet-sonarscanner /bin/dotnet-sonarscanner

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN apt clean

Add SonarSacn.sh /bin/SonarSacn.sh

WORKDIR /data

RUN chmod a+x /bin/SonarSacn.sh
