SET PATH=C:\GCloudSDK\google-cloud-sdk\bin;C:\openjdk_1.8.0\bin;%PATH%;
mvn clean package -P prod
gcloud config set project mesoncastillo
gcloud app deploy .\target\mesoncastillo\WEB-INF\appengine-web.xml --version=r8-0-0 --no-stop-previous-version --no-promote
gcloud app deploy .\target\mesoncastillo\WEB-INF\cron.yaml
