echo $TOKEN
curl -X GET -H "Authorization: Bearer $TOKEN" -H "Content-Type: application/yaml"  -H "Accept: application/yaml"  https://192.168.99.105:8443/api/v1/namespaces/proj-alpha/pods --insecure

