#!/bin/bash

dotnet sonarscanner begin /k:$PrjKey /n:$PrjName /d:sonar.host.url=$SonarUrl  /d:sonar.login=$SonarToken
dotnet build
dotnet sonarscanner end /d:sonar.login=$SonarToken

