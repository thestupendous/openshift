echo $TOKEN
curl -k  --data-binary @project-payload.yaml -X POST --insecure -H "Authorization: Bearer $TOKEN" -H "Accept: application/yaml" -H "Content-Type: application/yaml" https://192.168.99.105:8443/oapi/v1/projectrequests 
