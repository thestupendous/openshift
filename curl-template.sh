curl -k \
    -X POST \
    -d @- \
    -H "Authorization: Bearer $TOKEN" \
    -H 'Accept: application/json' \
    -H 'Content-Type: application/json' \
    -u system:admin \
    https://$ENDPOINT/apis/template.openshift.io/v1/namespaces/$NAMESPACE/templateinstances <<EOF
{
  "kind": "TemplateInstance",
  "apiVersion": "template.openshift.io/v1",
  "metadata": {
    "name": "templateinstance"
  },
  "spec": {
    "secret": {
      "name": "secret"
    },
    "template": $(curl -k \
                    -H "Authorization: Bearer $TOKEN" \
                    -H 'Accept: application/json' \
                    https://$ENDPOINT/apis/template.openshift.io/v1/namespaces/openshift/templates/cakephp-mysql-example)
  }
}
EOF
