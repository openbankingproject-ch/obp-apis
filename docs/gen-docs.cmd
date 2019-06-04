
call del swiss-ng-api.yaml.html
call redoc-cli bundle ..\swiss-ng-api.yaml
call move /y redoc-static.html swiss-ng-api.yaml.html
