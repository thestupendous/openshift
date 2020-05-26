#export TOKEN=$(oc serviceaccounts get-token robot)
export TOKEN=$(oc whoami -t)
export ENDPOINT=$(oc config current-context | cut -d/ -f2 | tr - .)
export NAMESPACE=$(oc config current-context | cut -d/ -f1)
