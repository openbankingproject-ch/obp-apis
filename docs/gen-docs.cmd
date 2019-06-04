
call del index.html
call redoc-cli bundle ..\swiss-ng-api.yaml
call move /y redoc-static.html index.html
