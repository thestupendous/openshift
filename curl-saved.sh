curl -k \
    -X GET \
    -d @- \
    -H "Authorization: Bearer $TOKEN" \
    -H 'Accept: application/json' \
    -H 'Content-Type: application/json' \
    https://$ENDPOINT/api/v1/namespaces/$NAMESPACE/deployments <<'EOF'
{
  "kind": "Secret",
  "apiVersion": "v1",
  "metadata": {
    "name": "secret"
  },
  "stringData": {
    "NAME": "example"
  }
}
EOF
