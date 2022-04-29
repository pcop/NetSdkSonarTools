# NetSdk 整合 sonar 工具

* 可用環境變數
  * `PrjKey` 專案代碼
  * `PrjName` 專案名稱
  * `SonarUrl` 服務網址
  * `SonarToken` 授權Token

* 運行範例
  ```bash
  docker run --rm -it \
      -e PrjKey="TestProjWeb"
      -e PrjName="2022測試專案"
      -e SonarToken="***3720228***ad7a***d2a***ff6***223***58"
      -v "$HOME/.nuget":/root/.nuget \
      -v "$PWD":/data \
      ghcr.io/pcop/netsdksonartools:main \
  	SonarSacn.sh
  ```