#!/bin/sh
# Call this command to get the argo logins which are not part of OCP
# On some RHDPS environmnets the "admin" user does not have the correct rights manage argoCD
# Use the results of this to directly login to argoCD e.g. not using SSO
ARGO_CMD=`oc get secrets -A -o jsonpath='{range .items[*]}{"oc get -n "}{.metadata.namespace}{" routes; oc -n "}{.metadata.namespace}{" extract secrets/"}{.metadata.name}{" --to=-\\n"}{end}' | grep gitops-cluster`
CMD=`echo $ARGO_CMD | sed 's|- oc|-;oc|g'`

eval $CMD

