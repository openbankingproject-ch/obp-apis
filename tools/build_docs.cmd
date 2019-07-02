
call redoc-cli bundle ..\swiss-ng-api.yaml
del ..\docs\index.html
move redoc-static.html ..\docs\index.html
