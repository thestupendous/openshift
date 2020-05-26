curl -k  \
-X POST \
--data-binary @build-config-payload.yaml
-H "Authorization: Bearer $TOKEN" \
-H "Accept: application/yaml" \
-H "Content-Type: application/yaml" \
https://192.168.99.105:8443/oapi/v1/namespaces/{$PROJECT}/buildconfigs
